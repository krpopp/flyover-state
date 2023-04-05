// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zoom_camera(target_x, target_y, target_w, target_h, rate){
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);
	
	var new_w = lerp(view_w, target_w, rate);
	var new_h = lerp(view_h, target_h, rate);
	
	camera_set_view_size(view_camera[0], new_w, new_h);
	
	var pos_x = camera_get_view_x(view_camera[0]);
	var pos_y = camera_get_view_y(view_camera[0]);
	
	var new_x = lerp(pos_x, target_x, rate);
	var new_y = lerp(pos_y, target_y, rate);
	
	camera_set_view_pos(view_camera[0], new_x, new_y);
	
	var dist_to_zoom = point_distance(pos_x, pos_y, new_x, new_y);
	
	return dist_to_zoom;
	
}