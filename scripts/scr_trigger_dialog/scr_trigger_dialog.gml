// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trigger_dialog(hit_character){
	//get rid of the bubble above the character
	var bubble = hit_character.my_bubble
	instance_destroy(bubble);
	//remove the flags for wh
	hit_character.my_has_dialog = false;
	hit_character.my_bubble = noone;
	
	//add the new dialogue to the dialog list
	scr_dialog_add(hit_character, hit_character.my_dialog, hit_character.my_color);
	
	//turn on the dialogue UI
	instance_activate_object(obj_manager.dialoge_box);
	
	//display the portrait
	obj_manager.dialoge_box.my_portrait = hit_character.current_portrait;
	obj_manager.dialoge_box.t_l = hit_character.t_l;
	obj_manager.dialoge_box.t_r = hit_character.t_r;
	obj_manager.dialoge_box.b_r = hit_character.b_r;
	obj_manager.dialoge_box.b_l = hit_character.b_l;
	
	//transition the dialogue box and make sure it's on top of the screen
	obj_manager.dialoge_box.fading_in = true;
	obj_manager.dialoge_box.depth = -20;
	
	//associate the charcter to their dialogue box
	hit_character.my_dialog_box = obj_manager.dialoge_box;
	
	//zoom into the character
	scr_enter_dialog(hit_character);
	//if the character has choices
	if(hit_character.my_choices_exist){
		//set up those choices
		//and let the manager know that there are choices
		obj_dialog_manager.dialog_choice_active = true;
		scr_dialog_choice(hit_character.my_choices[0], hit_character.my_choices[1]);
	}
}