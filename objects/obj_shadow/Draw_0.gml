var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _u_z = u_z;
var _u_z2 = u_z2;
var _vb = vb;
var _intensity = intensity;


//Turn on the Zbuffer (3D)
gpu_set_ztestenable(1);
gpu_set_zwriteenable(1);
var _z = 0;
with(obj_fire){
	//if(obj_fire.my_visibility){
	    //Draw the shadows (AKA light blockers)
	    shader_set(shd_shadow);
	    shader_set_uniform_f(_u_pos2,x,y);
	    shader_set_uniform_f(_u_z2,_z);
	    vertex_submit(_vb,pr_trianglelist,-1);

	    //Draw the Light
	    gpu_set_blendmode(bm_add);
	    shader_set(shd_firelight);
	    shader_set_uniform_f(_u_pos,x,y);
	    shader_set_uniform_f(_u_z,_z);
		if(obj_shadow.wait_timer > 5){
			shader_set_uniform_f(_intensity, random_range(15., 20.));
			obj_shadow.wait_timer = 0;
		} else{
			shader_set_uniform_f(_intensity, 20.);
		}
	
	    draw_rectangle(0,0,1366,768,0); //canvas for drawing the light
	    gpu_set_blendmode(bm_normal);

	    _z--; //Next set of shadows and lights is set closer to the screen
	//}
}
with(obj_lightpost){
	//if(obj_fire.my_visibility){
	    //Draw the shadows (AKA light blockers)
	    shader_set(shd_shadow);
	    shader_set_uniform_f(_u_pos2,x,y-10);
	    shader_set_uniform_f(_u_z2,_z);
	    vertex_submit(_vb,pr_trianglelist,-1);

	    //Draw the Light
	    gpu_set_blendmode(bm_add);
	    shader_set(shd_postlight);
	    shader_set_uniform_f(_u_pos,x,y-10);
	    shader_set_uniform_f(_u_z,_z);
		shader_set_uniform_f(_intensity, 10.);
	
	    draw_rectangle(0,0,1366,768,0); //canvas for drawing the light
	    gpu_set_blendmode(bm_normal);

	    _z--; //Next set of shadows and lights is set closer to the screen
	//}
}
with(obj_lamp){
	if(my_player_see){
		//Draw the shadows (AKA light blockers)
	    shader_set(shd_shadow);
	    shader_set_uniform_f(_u_pos2,x,y);
	    shader_set_uniform_f(_u_z2,_z);
	    vertex_submit(_vb,pr_trianglelist,-1);

	    //Draw the Light
	    gpu_set_blendmode(bm_add);
	    shader_set(shd_light);
	    shader_set_uniform_f(_u_pos,x,y);
	    shader_set_uniform_f(_u_z,_z);
		if(obj_shadow.wait_timer > 5){
			shader_set_uniform_f(_intensity, random_range(15., 20.));
			obj_shadow.wait_timer = 0;
		} else{
			shader_set_uniform_f(_intensity, 20.);
		}
	
	    draw_rectangle(0,0,1366,768,0); //canvas for drawing the light
	    gpu_set_blendmode(bm_normal);

	    _z--; //Next set of shadows and lights is set closer to the screen
	}
}
shader_reset();
gpu_set_ztestenable(0);
gpu_set_zwriteenable(0);

wait_timer++;