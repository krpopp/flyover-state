// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_adj_whole_grid(){
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
			
			if(obj_manager.fade_in){
				this_cell.tar_alpha = 0.5;
				this_cell.alarm[0] = random_range(0.5,3) * room_speed;
				this_cell.alpha_lerp = random_range(0.01, 0.1);
			}
		}
	}
}