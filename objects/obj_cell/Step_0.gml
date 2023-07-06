/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case C_STATE.idle:
		if(my_check_event){
			if(scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y)){
				my_current_path = scr_start_path(id, obj_player.x, obj_player.y);
				my_check_event = false;
				my_bubble.my_visibility = false;
				scr_move_in_path(id, my_current_path[my_current_path_count]);
				state = C_STATE.move;
			}
		}
		break;
	case C_STATE.grid_lerp:
		if(lerp_amt > 0){
			x = lerp(x,tar_x,lerp_amt);
			y = lerp(y,tar_y,lerp_amt);
			if(distance_to_point(tar_x,tar_y) < 0.1){
				state = C_STATE.idle;
				//lerp_amt = 0;
				x = tar_x;
				y = tar_y;
			}
		} else
		{
			state = C_STATE.idle;
			x = tar_x;
			y = tar_y;
		}
		break;
	case C_STATE.move:
		if(lerp_amt > 0){
			x = lerp(x,tar_x,lerp_amt);
			y = lerp(y,tar_y,lerp_amt);
			if(distance_to_point(tar_x,tar_y) < 0.001){
				show_debug_message("i should go to the next cell");
				if(my_current_path_count > array_length(my_current_path)-3)
				{
					x = tar_x;
					y = tar_y; 
					obj_manager.in_event = false;
					if(my_has_dialog)
					{
						scr_trigger_dialog(id);
					}
					state = C_STATE.idle;
				} else
				{
					scr_move_in_path(id, my_current_path[my_current_path_count]);
				}
			}
		} 
		break;
}

scr_alpha_lerp();
/*
if(alpha_lerping){
	alpha = lerp(alpha, tar_alpha, alpha_lerp);
	if(alpha == tar_alpha){
		alpha_lerping = false;
	}
	image_alpha = alpha;
}
