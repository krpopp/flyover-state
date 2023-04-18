// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_alpha_lerp(){
	if(image_alpha != tar_alpha){
		image_alpha = lerp(image_alpha, tar_alpha, alpha_lerp);
	}
}