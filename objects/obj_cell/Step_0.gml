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