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
		case "a":
			return instance_create_layer(0, 0, "Instances", obj_char);
			break;
		case "ȏ":
			return instance_create_layer(0, 0, "Instances", obj_bed);
			break;
		case "î":
			return instance_create_layer(0, 0, "Instances", obj_lamp);
			break;
		case "ň":
			return instance_create_layer(0, 0, "Instances", obj_tv);
			break;
		case "≏":
			return instance_create_layer(0, 0, "Instances", obj_couch);
			break;
		case "Í":
			return instance_create_layer(0, 0, "Instances", obj_lightpost);
			break;
		case "ǽ":
			return instance_create_layer(0, 0, "Instances", obj_car);
			break;
		case "*":
			return instance_create_layer(0, 0, "Instances", obj_flower);
			break;
		case "¤":
			return instance_create_layer(0, 0, "Instances", obj_bush);
			break;
		case "▓":
			return instance_create_layer(0, 0, "Instances", obj_road);
			break;
		case "†":
			return instance_create_layer(0, 0, "Instances", obj_grave);
			break;
		case "♱":
			return instance_create_layer(0, 0, "Instances", obj_tomb);
			break;
		case "↥":
			return instance_create_layer(0, 0, "Instances", obj_iron_fence);
			break;
		case "|":
			return instance_create_layer(0, 0, "Instances", obj_fence);
			break;
		case "-":
			return instance_create_layer(0, 0, "Instances", obj_road_dash);
			break;
		case "‥":
			return instance_create_layer(0, 0, "Instances", obj_dirt);
			break;
		case "æ":
			return instance_create_layer(0, 0, "Instances", obj_moving_car);
			break;
		default:
			return instance_create_layer(0, 0, "Instances", obj_cell);
			break;
	}
}