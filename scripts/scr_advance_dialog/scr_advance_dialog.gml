// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_advance_dialog(character, next_stage){
	with(character){
		my_dialog_track = next_stage;
		my_dialog = my_dialog_json.stage[my_dialog_track].line;

		if(variable_struct_exists(my_dialog_json.stage[my_dialog_track], "choices")){
			my_choices_exist = true;
			my_choices[0] = my_dialog_json.stage[my_dialog_track].choices[0];
			my_choices[1] = my_dialog_json.stage[my_dialog_track].choices[1];
	
			my_next_stage[0] = my_dialog_json.stage[my_dialog_track].next_stage[0];
			my_next_stage[1] = my_dialog_json.stage[my_dialog_track].next_stage[1];
		} else{
			my_choices_exist = false;
			my_choices[0] = "";
			my_choices[1] = "";
			
			my_next_stage[0] = my_dialog_json.stage[my_dialog_track].next_stage[0];
			my_next_stage[1] = -1;
		}

	}
}