// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_make_cell(grid_x, grid_y){
	//var new_cell = instance_create_layer(obj_manager.grid_x_offset + (grid_x * obj_manager.cell_offset), obj_manager.grid_y_offset + (grid_y * obj_manager.cell_offset), "Instances", obj_cell);
	//var my_obj_type = scr_cell_type(string(obj_manager.level_whole[# grid_x, grid_y]));
	//var new_cell = instance_create_layer(0, 0, "Instances", my_obj_type);
	
	var this_string = string(obj_manager.level_whole[# grid_x, grid_y]);
	var sub_cell = noone;
	
	if(string_length(this_string) > 1)
	{
		var new_cell = scr_cell_type(string_char_at(this_string, 1));
		sub_cell =  scr_cell_type(string_char_at(this_string, 2));
	} else
	{
		var new_cell = scr_cell_type(this_string);
	}
	
	
	
	new_cell.my_letter = string(obj_manager.level_whole[# grid_x, grid_y]);
	new_cell.my_visibility = false;
	
	
	new_cell.grid_whole_x = grid_x;
	new_cell.grid_whole_y = grid_y;
	
	
	if(new_cell.object_index == obj_tall_grass){
		new_cell.my_x_1_lerp = (new_cell.x - new_cell.sprite_width) + random(10);
		new_cell.my_x_2_lerp = (new_cell.x + new_cell.sprite_width) + random(10);
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
	
	if(new_cell.my_letter == "æ"){
		new_cell.sub_obj = instance_create_layer(new_cell.x, new_cell.y, "Instances", obj_moving_car);
		new_cell.sub_obj.move_dir = -1;
		new_cell.sub_obj.grid_x = grid_x;
		new_cell.sub_obj.grid_y = grid_y;
		new_cell.sub_obj.parent_x = new_cell.x;
		new_cell.sub_obj.parent_y = new_cell.y;
	}
	
	if(new_cell.my_has_dialog){
		new_cell.my_bubble = scr_speak_bubble(new_cell.x, new_cell.y, "Hey!");
	}
	new_cell.image_alpha = 0.5;
	new_cell.grid_visible_x = 0;
	new_cell.grid_visible_y = 0;
	
	if(sub_cell != noone)
	{
		sub_cell.my_letter = string(obj_manager.level_whole[# grid_x, grid_y]);
		sub_cell.my_visibility = false;
	
		sub_cell.grid_whole_x = grid_x;
		sub_cell.grid_whole_y = grid_y;
		if(sub_cell.my_has_dialog){
			sub_cell.my_bubble = scr_speak_bubble(sub_cell.x, sub_cell.y, "Hey!");
		}
		sub_cell.image_alpha = 0.5;
		sub_cell.grid_visible_x = 0;
		sub_cell.grid_visible_y = 0;
		
		sub_cell.my_sub_cell = new_cell
		
		ds_grid_add(obj_manager.grid_whole, grid_x, grid_y, sub_cell);
	} else
	{
		ds_grid_add(obj_manager.grid_whole, grid_x, grid_y, new_cell);
	}
	
	
}