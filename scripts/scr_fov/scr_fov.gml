// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fov(player_x, player_y){
	for(var x_grid = 0; x_grid < obj_manager.grid_horizontal_size; x_grid++){
		for(var y_grid = 0; y_grid < obj_manager.grid_vertical_size; y_grid++){
			var this_cell =  ds_grid_get(obj_manager.grid_visible, x_grid, y_grid);
			if(!this_cell.alpha_lerping){
				if(x_grid > player_x - 5 && x_grid < player_x + 5){
					if(y_grid > player_y - 5 && y_grid < player_y +5){
						//show_debug_message(y_grid);
						if(this_cell.my_has_dialog){
							this_cell.my_bubble.my_visibility = true;
						}
						this_cell.image_alpha = 1;
						this_cell.my_player_see = true;
					} else{
						this_cell.image_alpha = 0.5;
						if(this_cell.my_has_dialog){
							this_cell.my_bubble.my_visibility = false;
						}
						this_cell.my_player_see = false;
					}
				} else{
					this_cell.image_alpha = 0.5;
					if(this_cell.my_has_dialog){
						this_cell.my_bubble.my_visibility = false;
					}
					this_cell.my_player_see = false;
				}
			}
		}
	}
}