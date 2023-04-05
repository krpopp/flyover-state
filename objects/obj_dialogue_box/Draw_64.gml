/// @description Insert description here
// You can write your code in this editor
//draw_rectangle_color(x- 200, y - 200, x + 200, y + 200, #48285C, #48285C, #0B0418, #0B0418, 0);
//draw_rectangle_color(x- 200, y - 200, x + 200, y + 200, #0B0418, #0B0418, #48285C, #48285C, 1);
depth = 20;
//if(bg_rect_x[| 11] > bg_rect_lerp){

//draw_rectangle_color(bg_rect_x[| i], bg_rect_y[| i], display_get_gui_width(), bg_rect_y[| i] + bg_rect_h, #220d36, #220d36, #220d36, #220d36, false);
//bg_rect_counter++;
//if(bg_rect_counter >= 12){
//	bg_rect_counter = 0;
//}
//}// else{
for(var i = 0; i < 12; i++){
	var lerp_x = lerp(bg_rect_x[| i], bg_rect_lerp, 0.1);
	bg_rect_x[| i] = lerp_x;
	draw_rectangle_color(bg_rect_x[| i], bg_rect_y[| i], display_get_gui_width(), bg_rect_y[| i] + bg_rect_h, t_l, t_r, b_r, b_l, false);
}
//}

draw_sprite_ext(my_portrait, image_index, x, y, 0.4, 0.4, 0, c_white, portrait_alpha);
if(portrait_alpha < 1 && fading_in){
	portrait_alpha += 0.1;
} else{
	fading_in = false;
}
if(fading_out){
	portrait_alpha -= 0.1;
	if(portrait_alpha <= 0){
		instance_deactivate_object(self);
		my_portrait = noone;

		portrait_alpha = 0;

		t_l = noone;
		t_r = noone;
		b_r = noone;
		b_l = noone;

		blinking = false;
		blink_time = 0;
		blink_limit = random_range(55, 105);

		image_speed = 0.1;


		fading_in = false;
		fading_out = false;
		
		
		ds_list_clear(bg_rect_x);
		ds_list_clear(bg_rect_y);
		bg_rect_h = display_get_gui_height()/12;
		bg_rect_lerp = display_get_gui_width() * 0.7;
		bg_rect_counter = 0;

		for(var i = 0; i < 12; i++){
			ds_list_add(bg_rect_x, display_get_gui_width() + (i*100));
			ds_list_add(bg_rect_y, i * display_get_gui_height()/12);
		}

		//instance_destroy(self);
	}
}


