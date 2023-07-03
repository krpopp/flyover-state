/// @description Insert description here
// You can write your code in this editor

mp_grid = mp_grid_create(5, 
				5, 
				obj_manager.grid_horizontal_size, 
				obj_manager.grid_vertical_size, 
				obj_manager.cell_offset,
				obj_manager.cell_offset);

for(var v_x = 0; v_x < obj_manager.grid_horizontal_size; v_x++){
	for(var v_y = 0; v_y < obj_manager.grid_vertical_size; v_y++){	
		var this_cell = ds_grid_get(obj_manager.grid_visible, v_x, v_y);
		if(this_cell.my_solid && !this_cell.can_move){
			mp_grid_add_cell(mp_grid, v_x, v_y);
		}
	}
}

