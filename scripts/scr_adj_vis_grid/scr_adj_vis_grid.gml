// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adj_vis_grid(){
//function scr_adj_vis_grid(){
	for(var x_grid = 0; x_grid < obj_manager.level_width; x_grid++){
		for(var y_grid = 0; y_grid < obj_manager.level_height; y_grid++){
			var this_cell =  ds_grid_get(obj_manager.grid_whole, x_grid, y_grid);
			//this_cell.x = obj_manager.grid_x_offset + (x_grid * obj_manager.cell_offset);
			//this_cell.y = obj_manager.grid_y_offset + (y_grid * obj_manager.cell_offset);
			if(obj_manager.grid_made){
				this_cell.tar_x = (obj_manager.grid_x_offset + (x_grid * obj_manager.cell_offset)) - (obj_manager.grid_x_start * obj_manager.cell_offset);
				this_cell.tar_y = (obj_manager.grid_y_offset + (y_grid * obj_manager.cell_offset)) - (obj_manager.grid_y_start * obj_manager.cell_offset);
				this_cell.lerp_amt = .08;
			} else{
				this_cell.x = (obj_manager.grid_x_offset + (x_grid * obj_manager.cell_offset)) - (obj_manager.grid_x_start * obj_manager.cell_offset);
				this_cell.y = (obj_manager.grid_y_offset + (y_grid * obj_manager.cell_offset)) - (obj_manager.grid_y_start * obj_manager.cell_offset);
			}
			this_cell.my_visibility = false;
			if(this_cell.my_bubble != noone){
				this_cell.my_bubble.my_visibility = false;
			}
			this_cell.image_alpha = 0.5;
		}
	}
	ds_grid_clear(obj_manager.grid_visible, 0);
	for(var v_x = 0; v_x < obj_manager.grid_horizontal_size; v_x++){
		for(var v_y = 0; v_y < obj_manager.grid_vertical_size; v_y++){
			var grid_x = v_x + obj_manager.grid_x_start;
			var grid_y = v_y + obj_manager.grid_y_start;
			var next_cell = ds_grid_get(obj_manager.grid_whole, grid_x, grid_y);

			if(obj_manager.grid_made){
				next_cell.tar_x = obj_manager.grid_x_offset + (v_x * obj_manager.cell_offset);
				next_cell.tar_y = obj_manager.grid_y_offset + (v_y * obj_manager.cell_offset);
				next_cell.lerp_amt = .08;
			} else{
				next_cell.x = obj_manager.grid_x_offset + (v_x * obj_manager.cell_offset);
				next_cell.y = obj_manager.grid_y_offset + (v_y * obj_manager.cell_offset);
			}
			
			next_cell.my_x_1_lerp = next_cell.x - next_cell.sprite_width/2;
			next_cell.my_x_2_lerp = next_cell.x + next_cell.sprite_width/2;
			
			next_cell.my_x_min = (next_cell.x - next_cell.sprite_width/2) - 2;
			next_cell.my_x_max = (next_cell.x - next_cell.sprite_width/2) + 2;
			
			next_cell.my_visibility = true;
			next_cell.grid_visible_x = v_x;
			next_cell.grid_visible_y = v_y;
			
			if(next_cell.my_bubble != noone){
				if(!next_cell.my_bubble.has_seen){
					next_cell.my_bubble.my_visibility = true;
					next_cell.my_bubble.x = next_cell.tar_x;
					next_cell.my_bubble.y = next_cell.tar_y - 20;
					next_cell.my_bubble.has_seen = true;
				}else{
					next_cell.my_bubble.my_visibility = true;
					next_cell.my_bubble.tar_x = next_cell.tar_x;
					next_cell.my_bubble.tar_y = next_cell.tar_y - 20;
					next_cell.my_bubble.lerp_amt = 0.08;
					//next_cell.my_bubble.alarm[0] = room_speed * 0.05;
				}
			}

			ds_grid_add(obj_manager.grid_visible, next_cell.grid_visible_x, next_cell.grid_visible_y, next_cell);
		}
	}
}