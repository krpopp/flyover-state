// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enter_dialog(hit_character){
	//sets up for zooming in
	obj_dialog_manager.dialog_character_active = hit_character;
	obj_dialog_manager.dialog_active = true;
	obj_dialog_manager.on_screen = true;
	
	obj_manager.zoom_point = hit_character;
	obj_manager.camera_current_x = camera_get_view_x(view_camera[0]);
	obj_manager.camera_current_y = camera_get_view_y(view_camera[0]);
	obj_manager.zooming_in = true;
}