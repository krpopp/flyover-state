//if(!obj_dialog_manager.dialog_active && input_count <= 0 && !obj_manager.fade_in){
if(!obj_dialog_manager.dialog_active && input_count <= 0){
	if(keyboard_check(vk_down)){
		scr_player_move_y(1);
		input_count = 10;
		image_index = 0;
	} else if(keyboard_check(vk_up)){
		scr_player_move_y(-1);
		input_count = 10;
		image_index = 2;
	} else if(keyboard_check(vk_right)){
		scr_player_move_x(1);
		input_count = 10;
		image_index = 1;
		image_xscale = 1;
	} else if(keyboard_check(vk_left)){
		scr_player_move_x(-1);
		input_count = 10;
		image_index = 1;
		image_xscale = -1;
	}
}

if(position_meeting(x, y, obj_tall_grass)){
	var inst = instance_position(x, y, obj_tall_grass);
	inst.image_index = 1;
	inst.reset_sprite = 0;
}

if(lerp_amt > 0){
	x = lerp(x,tar_x,lerp_amt);
	y = lerp(y,tar_y,lerp_amt);
	if(distance_to_point(tar_x,tar_y) < 0.05){
		lerp_amt = 0;
		idle_min = y - 1;
		idle_max = y + 1;
		idle_tar = idle_min;
		moving = false;
	}
}

if(!moving){
	y = lerp(y, idle_tar, idle_lerp);
	if(y <= idle_min + 0.1){
		idle_tar = idle_max;
	} else if(y >= idle_max - 0.1){
		idle_tar = idle_min;
	}
}


if(input_count > 0){
	input_count--;
}