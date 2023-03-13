// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_make_cell(grid_x, grid_y){
	//var new_cell = instance_create_layer(obj_manager.grid_x_offset + (grid_x * obj_manager.cell_offset), obj_manager.grid_y_offset + (grid_y * obj_manager.cell_offset), "Instances", obj_cell);
	//var my_obj_type = scr_cell_type(string(obj_manager.level_whole[# grid_x, grid_y]));
	//var new_cell = instance_create_layer(0, 0, "Instances", my_obj_type);
	
	var new_cell = scr_cell_type(string(obj_manager.level_whole[# grid_x, grid_y]));
	
	new_cell.my_letter = string(obj_manager.level_whole[# grid_x, grid_y]);
	new_cell.my_text = scribble(new_cell.my_letter);
	new_cell.my_visibility = false;
	
	//new_cell.my_text.blend(new_cell.my_color, 1);
	new_cell.my_text.starting_format("fnt_game", new_cell.my_color);
	new_cell.my_text.origin(new_cell.my_text.get_width()/2, new_cell.my_text.get_height()/2);
	
	new_cell.grid_whole_x = grid_x;
	new_cell.grid_whole_y = grid_y;
	
	if(new_cell.object_index == obj_tall_grass){
		new_cell.my_x_1_lerp = (new_cell.x - new_cell.sprite_width);
		new_cell.my_x_2_lerp = (new_cell.x + new_cell.sprite_width);
	}
	
	if(new_cell.object_index == obj_wall){
		switch(new_cell.my_letter){
		case "▛":
			new_cell.image_index = 7;
			break;
		case "▀":
			new_cell.image_index = 0;
			break;
		case "┯":
			new_cell.image_index = 8;
			break;
		case "╽":
			new_cell.image_index = 9;
			break;
		case "▌":
			new_cell.image_index = 3;
			break;
		case "┷":
			new_cell.image_index = 10;
			break;
		case "▙":
			new_cell.image_index = 4;
			break;
		case "▟":
			new_cell.image_index = 6;
			break;
		case "▜":
			new_cell.image_index = 1;
			break;
		case "▄":
			new_cell.image_index = 5;
			break;
		case "▐":
			new_cell.image_index = 2;
			break;
		}
	}
	
	new_cell.grid_visible_x = 0;
	new_cell.grid_visible_y = 0;
	ds_grid_add(obj_manager.grid_whole, grid_x, grid_y, new_cell);
}