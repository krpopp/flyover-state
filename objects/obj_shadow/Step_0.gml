/// @description Insert description here
// You can write your code in this editor

vertex_begin(vb,vf);
var _vb = vb;
with(obj_cell){
    //scr_quad(_vb,x-sprite_width/2,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2); //Negative Slope Diagonal Wall
    //scr_quad(_vb,x+sprite_width/2,y-sprite_height/2,x-sprite_width/2,y+sprite_height/2); //Positive Slope Diagonal Wall
	if(casts_shadows){
		if(object_index == obj_tall_grass){
			scr_quad(_vb,my_x_1_lerp,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2); //Negative Slope Diagonal Wall
			scr_quad(_vb,my_x_2_lerp,y-sprite_height/2,x-sprite_width/2,y+sprite_height/2); //Positive Slope Diagonal Wall
		} else{
			
			
			scr_quad(_vb,x,y,x+sprite_width/2,y+sprite_height/2); //Negative Slope Diagonal Wall
			scr_quad(_vb,x+sprite_width/2,y,x,y+sprite_height/2); //Positive Slope Diagonal Wall
		}
	}
	//scr_quad(_vb,my_x_1_lerp,y-sprite_height/2,x+sprite_width/2,y+sprite_height/2); //Negative Slope Diagonal Wall
    //scr_quad(_vb,my_x_2_lerp,y-sprite_height/2,x-sprite_width/2,y+sprite_height/2); //Positive Slope Diagonal Wall
}
vertex_end(vb);


