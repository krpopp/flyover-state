/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();


if(my_visibility){
	//draw_set_font(fnt_game);
	//image_blend = my_color;
	//draw_set_color(my_color);
	//draw_self();
	if(my_x_1_lerp > my_x_max || my_x_1_lerp < my_x_min){
		my_lerp_speed = -my_lerp_speed;
	}
	my_x_1_lerp += my_lerp_speed;
	my_x_2_lerp += my_lerp_speed;
	//show_debug_message(my_x_1_lerp);
	
	draw_sprite_pos(sprite_index, image_index, 
		my_x_1_lerp, y - sprite_height/2, 
		my_x_2_lerp, y - sprite_height/2, 
		x + sprite_width/2, y + sprite_height/2, 
		x - sprite_width/2, y + sprite_height/2, 
		alpha);
		

	//draw_sprite(sprite_index, 0, x, y);
	//draw_text_color(x, y, my_letter, my_color, my_color, my_color, my_color, 1);
	//draw_text_scribble(x, y, my_letter);
	
	//my_text.draw(x, y);
	if(reset_sprite >= 0){
		reset_sprite++;
		if(reset_sprite >= reset_sprite_limit){
			image_index = 0;
			reset_sprite = -1;
		}
	}
}