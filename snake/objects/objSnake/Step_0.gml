if (keyboard_check_pressed(vk_right)){
	velocityX = 1;
	velocityY = 0;
}
else if (keyboard_check_pressed(vk_down)){
	velocityX = 0;
	velocityY = 1;
}
else if (keyboard_check_pressed(vk_left)){
	velocityX = -1;
	velocityY = 0;
}
else if (keyboard_check_pressed(vk_up)){
	velocityX = 0;
	velocityY = -1;
}



x = (x+velocityX+16)%16;
y = (y+velocityY+16)%16;


if (x == objFood.x && y == objFood.y) {
	instance_destroy(objFood);
	instance_create_depth(floor(random(15)),floor(random(15)),0,objFood);
}