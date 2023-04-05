// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_speak_bubble(x_pos, y_pos, line){
	var new_bubble = instance_create_layer(x_pos, y_pos, "Instances", obj_speak);
	new_bubble.my_line = line;
	return new_bubble;
}