/// @description Insert description here
// You can write your code in this editor


event_inherited();

my_portrait = spr_new_test;

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

my_name = "deb";

var my_dialog_file = file_text_open_read("test_char.txt");
while(!file_text_eof(my_dialog_file)){
	my_dialog_all = my_dialog_all + file_text_readln(my_dialog_file);
}
file_text_close(my_dialog_file);
my_dialog_json = json_parse(my_dialog_all);

my_dialog = my_dialog_json.stage[my_dialog_track].line;



if(variable_struct_exists(my_dialog_json.stage[my_dialog_track], "choices")){
	my_choices_exist = true;
	my_choices[0] = my_dialog_json.stage[my_dialog_track].choices[0];
	my_choices[1] = my_dialog_json.stage[my_dialog_track].choices[1];
	
	my_next_stage[0] = my_dialog_json.stage[my_dialog_track].next_stage[0];
	my_next_stage[1] = my_dialog_json.stage[my_dialog_track].next_stage[1];
}