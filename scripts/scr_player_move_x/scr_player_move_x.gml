// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move_x(x_change){
	with(obj_player){
		var old_cell = noone;
		var new_cell = noone;
		//if the next cell is less than the bottom inner border OR the grid has reached the bottom of the level
		if((grid_visible_x + x_change > obj_manager.grid_horizontal_size - obj_manager.inner_boarder 
		&& obj_manager.grid_x_start + obj_manager.grid_horizontal_size < obj_manager.level_width) 
		|| (grid_visible_x + x_change < obj_manager.inner_boarder &&  obj_manager.grid_x_start > 0)) {	//otherwise, if the next cell is past the inner grid border and the grid hasn't reached the bottom of the level
			new_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x + x_change, grid_visible_y);
			if(new_cell.my_solid != true){
				obj_manager.grid_x_start += x_change;
				//scr_adj_vis_grid();
				old_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x + -x_change, grid_visible_y);
			} else{
				scr_player_collide(new_cell);
			}
			

		} else {
			if(grid_visible_x + x_change < obj_manager.grid_horizontal_size && grid_visible_x + x_change >= 0){ //if the next cell is less than the last row
				new_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x + x_change, grid_visible_y);
				if(new_cell.my_solid != true){
					old_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y);
					//x = new_cell.x;
					//y = new_cell.y;
					tar_x = new_cell.x;
					tar_y = new_cell.y;
					lerp_amt = .2;
					moving = true;
					grid_visible_x += x_change;
				} else{
					scr_player_collide(new_cell);
				}
			}
		}
		scr_adj_vis_grid();
		if(old_cell != noone){
			old_cell.tar_alpha = 1;
			old_cell.alpha_lerping = true;
			old_cell.alpha_lerp = 0.01;
			new_cell.tar_alpha = 0;
			new_cell.alpha_lerping = true;
			new_cell.alpha_lerp = 0.3
			//old_cell.my_visibility = true;
			//new_cell.my_visibility = false;
		}
	}
	scr_fov(grid_visible_x, grid_visible_y);
	if(!obj_manager.zooming_in && obj_dialog_manager.dialog_active){
		obj_manager.zooming_out = true;
		obj_dialog_manager.dialog_character_active.my_dialog_box.fading_out = true;
		obj_dialog_manager.dialog_active = false;
		obj_dialog_manager.dialog_character_active = false;
	}
}