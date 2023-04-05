/// @description Insert description here
// You can write your code in this editor

my_portrait = spr_new_test;

portrait_alpha = 0;

blinking = false;
blink_time = 0;
blink_limit = random_range(55, 105);

image_speed = 0.1;


fading_in = false;
fading_out = false;

bg_rect_x = ds_list_create();
bg_rect_y = ds_list_create();
bg_rect_h = display_get_gui_height()/12;
bg_rect_lerp = display_get_gui_width() * 0.7;
bg_rect_counter = 0;

for(var i = 0; i < 12; i++){
	ds_list_add(bg_rect_x, display_get_gui_width() + (i*100));
	ds_list_add(bg_rect_y, i * display_get_gui_height()/12);
}