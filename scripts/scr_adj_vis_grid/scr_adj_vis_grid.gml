// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adj_vis_grid(){
	for(var x_grid = 0; x_grid < obj_manager.level_width; x_grid++){
		for(var y_grid = 0; y_grid < obj_manager.level_height; y_grid++){
			var this_cell =  ds_grid_get(obj_manager.grid_whole, x_grid, y_grid);
			this_cell.my_visibility = false;
		}
	}
	ds_grid_clear(obj_manager.grid_visible, 0);
	for(var v_x = 0; v_x < obj_manager.grid_horizontal_size; v_x++){
		for(var v_y = 0; v_y < obj_manager.grid_vertical_size; v_y++){
			var grid_x = v_x + obj_manager.grid_x_start;
			var grid_y = v_y + obj_manager.grid_y_start;
			var next_cell = ds_grid_get(obj_manager.grid_whole, grid_x, grid_y);
			next_cell.x = obj_manager.grid_x_offset + (v_x * obj_manager.cell_offset);
			next_cell.y = obj_manager.grid_y_offset + (v_y * obj_manager.cell_offset);
			
			next_cell.my_x_1_lerp = next_cell.x - next_cell.sprite_width/2;
			next_cell.my_x_2_lerp = next_cell.x + next_cell.sprite_width/2;
			
			next_cell.my_x_min = (next_cell.x - next_cell.sprite_width/2) - 2;
			next_cell.my_x_max = (next_cell.x - next_cell.sprite_width/2) + 2;
			
			next_cell.my_visibility = true;
			next_cell.grid_visible_x = v_x;
			next_cell.grid_visible_y = v_y;
			ds_grid_add(obj_manager.grid_visible, next_cell.grid_visible_x, next_cell.grid_visible_y, next_cell);
		}
	}
}