// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trigger_dialog(hit_character){
	var bubble = hit_character.my_bubble
	instance_destroy(bubble);
	hit_character.my_has_dialog = false;
	hit_character.my_bubble = noone;
	scr_dialog_add(hit_character, hit_character.my_dialog, hit_character.my_color);
	
	instance_activate_object(obj_manager.dialoge_box);
	
	obj_manager.dialoge_box.my_portrait = hit_character.my_portrait;
	obj_manager.dialoge_box.t_l = hit_character.t_l;
	obj_manager.dialoge_box.t_r = hit_character.t_r;
	obj_manager.dialoge_box.b_r = hit_character.b_r;
	obj_manager.dialoge_box.b_l = hit_character.b_l;
	
	obj_manager.dialoge_box.fading_in = true;
	obj_manager.dialoge_box.depth = -20;
	hit_character.my_dialog_box = obj_manager.dialoge_box;
	scr_enter_dialog(hit_character);
	if(hit_character.my_choices_exist){
		obj_dialog_manager.dialog_choice_active = true;
		scr_dialog_choice(hit_character.my_choices[0], hit_character.my_choices[1]);
	}
}