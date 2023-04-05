// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dialog_choice(first_choice, second_choice){
	//ds_list_add(obj_dialog_manager.dialog_color, c_white);
	//ds_list_add(obj_dialog_manager.dialog_color, c_white);
	ds_list_add(obj_dialog_manager.current_choices, "(1) " + first_choice);
	ds_list_add(obj_dialog_manager.current_choices, "(2) " + second_choice);
}