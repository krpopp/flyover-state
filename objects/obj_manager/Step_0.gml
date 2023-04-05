/// @description Insert description here
// You can write your code in this editor


if(zooming_in){
	var zoom_dist = scr_zoom_camera(zoom_point.x  - camera_get_view_width(view_camera[0])/3, zoom_point.y - camera_get_view_height(view_camera[0])/3, camera_base_width/2, camera_base_height/2, 0.05);
	
	if(zoom_dist < 0.01){
		camera_set_view_size(view_camera[0], camera_base_width/2, camera_base_height/2);
		var current_width = camera_get_view_width(view_camera[0])/3;
		var current_height = camera_get_view_height(view_camera[0])/3;
		camera_set_view_pos(view_camera[0], zoom_point.x - current_width, zoom_point.y - current_height);
		zooming_in = false;
	}
} else if(zooming_out){
	var zoom_dist = scr_zoom_camera(0, 0, camera_base_width, camera_base_height, 0.05);
	if(zoom_dist < 0.2){
		camera_set_view_size(view_camera[0], camera_base_width, camera_base_height);
		camera_set_view_pos(view_camera[0], 0, 0);
		zooming_out = false;
	}
}


