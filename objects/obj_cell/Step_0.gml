/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case C_STATE.idle:
		if(my_check_event){
			if(scr_check_for_event(grid_visible_x, grid_visible_y, my_e_range_x, my_e_range_y, obj_player.grid_visible_x, obj_player.grid_visible_y)){
				scr_start_path(id, obj_player.x, obj_player.y);
				my_check_event = false;
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
		if(path_position == 1)
		{
			state = C_STATE.idle;
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
