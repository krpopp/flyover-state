// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_in_path(me, next_pos){
	with(me)
	{
		var c_x = next_pos % obj_manager.grid_horizontal_size;
		var c_y = next_pos div obj_manager.grid_horizontal_size;
		tar_x = ds_grid_get(obj_manager.grid_visible, c_x, c_y).x;
		tar_y = ds_grid_get(obj_manager.grid_visible, c_x, c_y).y;
		lerp_amt = .1;
		my_current_path_count++;
	}
}