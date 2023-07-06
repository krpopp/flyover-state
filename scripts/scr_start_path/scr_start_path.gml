// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start_path(mover, tar_x, tar_y){
	if(mp_grid_path(obj_motion_manager.mp_grid, mover.my_path, 
		mover.x, 
		mover.y, 
		tar_x, 
		tar_y, 
		false)){
		path_set_closed(mover.my_path, false);
		//path_start(mover.my_path, 2, path_action_stop, false);
		
		cell_list = [];
		
		for(var i = 0; i < path_get_number(mover.my_path); i++)
		{
			var cellX = path_get_point_x(mover.my_path, i) div obj_manager.cell_offset;
			var cellY = path_get_point_y(mover.my_path, i) div obj_manager.cell_offset;
			
			cell_list[i] = (cellY * obj_manager.grid_horizontal_size) + cellX;
			
			show_debug_message(cell_list[i] % obj_manager.grid_horizontal_size);
			show_debug_message(cell_list[i] div obj_manager.grid_horizontal_size);
		}
		
		show_debug_message("found a path");
		return cell_list;
	} else {
		show_debug_message("i can't find a path");
	}
}