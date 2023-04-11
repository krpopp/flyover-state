// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dialog_add(hit_obj, dialog_to_add, color_to_add){
	//add the new dialogue to the dialog list
	ds_list_add(obj_dialog_manager.dialog_color, color_to_add);
	ds_list_add(obj_dialog_manager.shown_dialog, hit_obj.my_name + ": " + dialog_to_add);
}