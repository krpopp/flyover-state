/// @description Insert description here
// You can write your code in this editor

my_letter = "A";

grid_whole_x = 0;
grid_whole_y = 0;
	
grid_visible_x = 0;
grid_visible_y = 0;

my_visibility = false;

my_color = make_colour_rgb(255, 255, 255);

my_solid = false;
can_move = false;

my_check_event = false;

casts_shadows = false;

//my_has_dialog controls whether this has a bubble
//delete?
my_has_dialog = false;
my_bubble = noone;

my_dialog_box = noone;

my_player_see = false;

lerp_amt = 0;
tar_x = 0;
tar_y = 0;

sub_obj = noone;


alpha_lerp = 0.1;
alpha_lerping = false;
alpha = 0;
tar_alpha = 1;

player_on = false;
char_on = false;

enum C_STATE
{
 idle,
 grid_lerp,
 move
}

state = C_STATE.idle


my_path = noone;

my_sub_cell = noone;

my_current_path = [];
my_current_path_count = 1;