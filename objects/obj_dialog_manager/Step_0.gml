/// @description Insert description here
// You can write your code in this editor

if(dialog_choice_active){
	if(keyboard_check_pressed(ord("1"))){
		scr_dialog_add(obj_player, dialog_character_active.my_choices[0], c_white);
		scr_advance_dialog(dialog_character_active, dialog_character_active.my_next_stage[0]);
		scr_dialog_add(dialog_character_active, dialog_character_active.my_dialog, dialog_character_active.my_color);
		dialog_choice_active = false;
		//scr_exit_dialog();
	} else if(keyboard_check_pressed(ord("2"))){
		scr_dialog_add(obj_player, dialog_character_active.my_choices[0], c_white);
		scr_advance_dialog(dialog_character_active, dialog_character_active.my_next_stage[1]);
		scr_dialog_add(dialog_character_active, dialog_character_active.my_dialog, dialog_character_active.my_color);
		dialog_choice_active = false;
		//scr_exit_dialog();
	}
}
if(dialog_active){
	if(keyboard_check_pressed(vk_escape)){
		scr_exit_dialog();
	}
}

