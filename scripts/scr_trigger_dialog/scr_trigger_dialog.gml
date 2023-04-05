// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trigger_dialog(hit_character){
	var bubble = hit_character.my_bubble
	instance_destroy(bubble);
	hit_character.my_has_dialog = false;
	hit_character.my_bubble = noone;
	scr_dialog_add(hit_character, hit_character.my_dialog, hit_character.my_color);
	var new_dialoge = instance_create_layer(room_width/1.6, room_height/1.3, "Instances", obj_dialogue_box);
	new_dialoge.fading_in = true;
	new_dialoge.depth = -20;
	hit_character.my_dialog_box = new_dialoge;
	scr_enter_dialog(hit_character);
	if(hit_character.my_choices_exist){
		obj_dialog_manager.dialog_choice_active = true;
		scr_dialog_choice(hit_character.my_choices[0], hit_character.my_choices[1]);
	}
}