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
		path_start(mover.my_path, 2, path_action_stop, false);
		show_debug_message("found a path");
	} else {
		show_debug_message("i can't find a path");
	}
}