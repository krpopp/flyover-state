// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cell_type(letter){
	switch(letter){
		case "▛":
		case "▀":
		case "┯":
		case "╽":
		case "▌":
		case "┷":
		case "▙":
		case "▟":
		case "▜":
		case "▄":
		case "▐":
			return instance_create_layer(0, 0, "Instances", obj_wall);
			break;
		case ",":
			return instance_create_layer(0, 0, "Instances", obj_grass);
			break;
		case "¶":
			return instance_create_layer(0, 0, "Instances", obj_tree);
			break;
		case "#":
			return instance_create_layer(0, 0, "Instances", obj_tall_grass);
			break;
		case "±":
			return instance_create_layer(0, 0, "Instances", obj_fire);
			break;
		default:
			return instance_create_layer(0, 0, "Instances", obj_cell);
			break;
	}
}