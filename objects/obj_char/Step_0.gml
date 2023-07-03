/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(my_check_event){
	//scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y);
	if(scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y)){
		scr_start_path(id, obj_player.x, obj_player.y);
		my_check_event = false;
	}
}
