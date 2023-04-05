/// @description Insert description here
// You can write your code in this editor


image_alpha -= 0.01;
if(image_alpha <= 0){
	image_alpha = 1;
	alarm[0] = room_speed * 2;
} else{
	alarm[0] = room_speed * 0.05;
}

