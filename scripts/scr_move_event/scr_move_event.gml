// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_event(obj_move, t_x, t_y){
	with(obj_move){
		var old_cell = noone;
		var new_cell = noone;
		old_cell = ds_grid_get(obj_manager.grid_visible, grid_visible_x, grid_visible_y);
		new_cell = ds_grid_get(obj_manager.grid_visible, t_x, t_y);
		show_debug_message(x);
		show_debug_message(new_cell.x);
		tar_x = new_cell.x;
		tar_y = new_cell.y;
		lerp_amt = .2;
		moving = true;
		//scr_adj_vis_grid();
		//scr_fov(obj_player.grid_visible_x, obj_player.grid_visible_y);
		//dealing with needing a replacement 
		//characters shouldn't be in the sheet!
		new_cell.char_on = true;
		new_cell.tar_alpha = 0;
	}
}