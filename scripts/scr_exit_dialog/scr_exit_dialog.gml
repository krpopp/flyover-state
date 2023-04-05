// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_exit_dialog(){
	obj_dialog_manager.dialog_character_active.my_dialog_box.fading_out = true;
	obj_dialog_manager.dialog_active = false;
	obj_dialog_manager.dialog_character_active = false;
	obj_dialog_manager.on_screen = false;
	obj_dialog_manager.dialog_choice_active = false;
	ds_list_clear(obj_dialog_manager.shown_dialog);
	ds_list_clear(obj_dialog_manager.dialog_color);
	ds_list_clear(obj_dialog_manager.current_choices);
	
	obj_manager.zooming_out = true;
}