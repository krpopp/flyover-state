/// @description Insert description here
// You can write your code in this editor

shown_dialog = ds_list_create();
dialog_color = ds_list_create();

current_choices = ds_list_create();

dialog_y_start = 50;
dialog_x_start = 1020;

dialog_choice_active = false;
dialog_character_active = noone;

dialog_active = false;

on_screen = false;

depth = 0;