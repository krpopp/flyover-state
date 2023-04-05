/// @description Insert description here
// You can write your code in this editor
if(my_visibility){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_self();
	//draw_text(x, y, my_line);
	draw_set_color(c_black);
	draw_text_transformed(x, y, my_line, 0.5, 0.5, 0);
}
