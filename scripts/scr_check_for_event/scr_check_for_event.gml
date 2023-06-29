// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_for_event(c_x, c_y, r_x, r_y, plr_x, plr_y){
	for(var x_pos = c_x - r_x; x_pos < c_x + r_x; x_pos++){
		for(var y_pos = c_y - r_y; y_pos < c_y + r_y; y_pos++){
			if(x_pos == plr_x && y_pos == plr_y){
				obj_manager.in_event = true;
				return true;
			}
		}
	}
}