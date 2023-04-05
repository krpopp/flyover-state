// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move_y(y_change){
	with(obj_player){
		var old_cell = noone;
		var new_cell = noone;
		//if the next cell is less than the bottom inner border OR the grid has reached the bottom of the level
		if((grid_visible_y + y_change > obj_manager.grid_vertical_size - obj_manager.inner_boarder 
		&& obj_manager.grid_y_start + obj_manager.grid_vertical_size < obj_manager.level_height) 
		|| (grid_visible_y + y_change < obj_manager.inner_boarder &&  obj_manager.grid_y_start > 0)) {	//otherwise, if the next cell is past the inner grid border and the grid hasn't reached the bottom of the level
			new_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y + y_change);
			if(new_cell.my_solid != true){
				obj_manager.grid_y_start += y_change;
				scr_adj_vis_grid();
				old_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y + -y_change);
			} else{
				scr_player_collide(new_cell);
			}

		} else {
			if(grid_visible_y + y_change < obj_manager.grid_vertical_size && grid_visible_y + y_change >= 0){ //if the next cell is less than the last row
				new_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y + y_change);
				if(new_cell.my_solid != true){
					old_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y);
					new_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y + y_change);
					//x = new_cell.x;
					//y = new_cell.y;
					tar_x = new_cell.x;
					tar_y = new_cell.y;
					lerp_amt = .2;
					moving = true;
					grid_visible_y += y_change;
				} else{
				scr_player_collide(new_cell);
			}
			}
		}
		if(old_cell != noone){
			old_cell.my_visibility = true;
			new_cell.my_visibility = false;
		}
		scr_fov(grid_visible_x, grid_visible_y);
		if(!obj_manager.zooming_in && obj_dialog_manager.dialog_active){
			obj_manager.zooming_out = true;
			obj_dialog_manager.dialog_active = false;
		}
	}
}