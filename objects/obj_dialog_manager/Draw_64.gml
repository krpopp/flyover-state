/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(shown_dialog) > 0 && on_screen){
	draw_set_font(fnt_dialog);
	draw_set_halign(fa_left);
	for(var i = 0; i < ds_list_size(shown_dialog); i++){
		draw_set_color(dialog_color[|i ]);
		draw_text(dialog_x_start, dialog_y_start + (i * 20), shown_dialog[| i]);
	}
	if(dialog_choice_active && ds_list_size(current_choices) > 0){
		draw_set_color(c_white);
		draw_text(dialog_x_start, dialog_y_start + ds_list_size(shown_dialog) * 20, current_choices[| 0]);
		draw_set_color(c_white);
		draw_text(dialog_x_start, dialog_y_start + (ds_list_size(shown_dialog) + 1) * 20, current_choices[| 1]);
	}
}






