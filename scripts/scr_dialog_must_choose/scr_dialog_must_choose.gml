// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dialog_must_choose(){
	ds_list_add(obj_dialog_manager.dialog_color, c_white);
	ds_list_add(obj_dialog_manager.shown_dialog, "You must answer the question");
}