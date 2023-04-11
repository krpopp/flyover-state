/// @description Insert description here
// You can write your code in this editor
if(lerp_amt > 0){
	x = lerp(x,tar_x,lerp_amt);
	y = lerp(y,tar_y,lerp_amt);
	if(distance_to_point(tar_x,tar_y) < 0.1){
		//lerp_amt = 0;
		//x = tar_x;
		//y = tar_y;
	}
}

if(alpha_lerping){
	alpha = lerp(alpha, tar_alpha, alpha_lerp);
	if(alpha == tar_alpha){
		alpha_lerping = false;
	}
	image_alpha = alpha;
}
