/// @description Insert description here
// You can write your code in this editor


event_inherited();

my_solid = true;

my_color = #BD8CBF;

t_l = #220d36;
t_r = #220d36;
b_r = #220d36;
b_l = #220d36;

my_dialog_all = "";
my_dialog_track = 0;

my_dialog = "";
my_choices = ["",""];
my_next_stage = [-1, -1];
my_choices_exist = false;

my_has_dialog = true;
my_dialog_box = noone;


var my_dialog_file = file_text_open_read(dialogue_file);

//load all lines from the dialogue file to one big ol string
while(!file_text_eof(my_dialog_file)){
	my_dialog_all = my_dialog_all + file_text_readln(my_dialog_file);
}

file_text_close(my_dialog_file);

//parse the big ol string
my_dialog_json = json_parse(my_dialog_all);

//stage is a collection of a line with a choice which lead to the next stage
//this sets the first line the character will speak
my_dialog = my_dialog_json.stage[my_dialog_track].line;


//if the first line of the character has a choice
if(variable_struct_exists(my_dialog_json.stage[my_dialog_track], "choices")){
	my_choices_exist = true;
	//set the choice variables
	my_choices[0] = my_dialog_json.stage[my_dialog_track].choices[0];
	my_choices[1] = my_dialog_json.stage[my_dialog_track].choices[1];
	
	//set the next state variables
	my_next_stage[0] = my_dialog_json.stage[my_dialog_track].next_stage[0];
	my_next_stage[1] = my_dialog_json.stage[my_dialog_track].next_stage[1];
}