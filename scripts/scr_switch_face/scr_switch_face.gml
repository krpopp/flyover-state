// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_switch_face(emote, char_obj){
	switch(emote){
		case "base":
			return char_obj.my_portrait_base;
			break;
		case "happy":
			return char_obj.my_portrait_happy;
			break;
		case "sad":
			return char_obj.my_portrait_sad;
			break;
		case "angry":
			return char_obj.my_portrait_angry;
			break;
		default:
			return char_obj.my_portrait_base;
			break;
	}
}