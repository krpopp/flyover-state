// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_collide(hit_cell){
	if(hit_cell.object_index == obj_char){
		scr_trigger_dialog(hit_cell);
	}
}