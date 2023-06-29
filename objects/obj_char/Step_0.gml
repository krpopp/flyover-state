/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
/*
if(my_check_event){
	//scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y);
	if(scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y)){
		scr_move_event(id, grid_visible_x-1, grid_visible_y);
		my_check_event = false;
	}
}

if(moving){
	show_debug_message("i should lerp!!!");
	x = lerp(x,tar_x,lerp_amt);
	y = lerp(y,tar_y,lerp_amt);
	if(x == tar_x && y == tar_y){
		lerp_amt = 0;
		moving = false;
	}
}
