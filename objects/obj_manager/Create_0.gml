/// @description Insert description here
// You can write your code in this editor

//to do:
//fix way that grass moves
//collect item
//open door

grid_made = false;

grid_x_offset = 20;
grid_y_offset = 20;

grid_x_start = 0;
grid_y_start = 0;

grid_horizontal_size = 50;
grid_vertical_size = 50;

cell_offset = font_get_info(fnt_game).size + 3;

//fade_in = true;

//grid_horizontal_size = round(room_width/cell_offset)/1.5;
grid_horizontal_size = round(((room_width - (grid_x_offset + cell_offset))/cell_offset));
//show_debug_message(grid_horizontal_size);
//grid_vertical_size = round(((room_height  - (grid_y_offset + cell_offset))/cell_offset));

//grid_horizontal_size = 25;
grid_vertical_size = 30;

level_whole = load_csv("graveyard.csv");
level_width = ds_grid_width(level_whole);
level_height = ds_grid_height(level_whole);

grid_whole = ds_grid_create(level_width, level_height);
grid_visible = ds_grid_create(grid_horizontal_size, grid_vertical_size);


player_start_x = 23;
player_start_y = 25;

inner_boarder = 5;


for(var x_grid = 0; x_grid < level_width; x_grid++){
	for(var y_grid = 0; y_grid < level_height; y_grid++){
		scr_make_cell(x_grid, y_grid);
	}
}



scr_adj_vis_grid();

var player_start_cell = ds_grid_get(grid_visible, player_start_x, player_start_y);
player_start_cell.my_visibility = false;
player = instance_create_layer(player_start_cell.x, player_start_cell.y, "Instances", obj_player);
player.grid_visible_x = player_start_x;
player.grid_visible_y = player_start_y;
player.grid_whole_x = 0;
player.grid_whole_y = 0;


camera_base_width = camera_get_view_width(view_camera[0]);
camera_base_height = camera_get_view_height(view_camera[0]);

camera_current_x = camera_get_view_x(view_camera[0]);
camera_current_y = camera_get_view_y(view_camera[0]);

zooming_in = false;
zooming_out = false;
zoom_point = noone;

grid_x_start = 0;
grid_y_start = 20;

scr_adj_vis_grid();

grid_made = true;
scr_fov(player_start_x, player_start_y);
//camera_set_view_size(view_camera[0], 683, 384);
ds_grid_get(obj_manager.grid_visible, player.grid_visible_x, player.grid_visible_y).my_visibility = false;

dialoge_box = instance_create_layer(room_width/1.6, room_height/1.3, "Instances", obj_dialogue_box);
instance_deactivate_object(dialoge_box);

//fadfadalarm[0] = 3 * room_speed;