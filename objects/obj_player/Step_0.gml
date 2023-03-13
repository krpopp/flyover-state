if(keyboard_check_pressed(vk_down)){
	scr_player_move_y(1);
} else if(keyboard_check_pressed(vk_up)){
	scr_player_move_y(-1);
} else if(keyboard_check_pressed(vk_right)){
	scr_player_move_x(1);
} else if(keyboard_check_pressed(vk_left)){
	scr_player_move_x(-1);
}

if(position_meeting(x, y, obj_tall_grass)){
	var inst = instance_position(x, y, obj_tall_grass);
	inst.image_index = 1;
	inst.reset_sprite = 0;
}