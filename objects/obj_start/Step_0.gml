/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)){
	if(start_dialogue_pos < array_length(start_dialogue)-1){
		start_dialogue_pos++;
	} else {
		room_goto(1);
	}
}