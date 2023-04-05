/// @description Insert description here
// You can write your code in this editor
blink_time++;
if(blink_time >= blink_limit){
	blinking = true;
}

if(!blinking){
	if(image_index > 3){
		image_index = 0;
	}
} else{
	if(image_index > 6){
		image_index = 0;
		blink_time = 0;
		blink_limit = random_range(55, 105);
		blinking = false;
	}
}




