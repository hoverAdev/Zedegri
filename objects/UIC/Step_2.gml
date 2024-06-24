/// @description Insert description here
// You can write your code in this editor
if room == Room_Enemy_Select{
	persistent = false;	
}
if keyboard_check_pressed(vk_up){
	if selector[1] == 0{}
	else{
		selector ++;	
	}
}
else if keyboard_check_pressed(vk_down) and selector[0] == 0{
	if selector[1] == 18{}
	else{
		selector --;	
	}
}
else if keyboard_check_pressed(vk_down) and selector[0] == 1{
	if selector[1] == 2{}
	else{
		selector --;	
	}
}
else if keyboard_check_pressed(vk_down) and selector[0] == 2{
	if selector[1] == array_length(drawn_array){}
	else{
		selector --;	
	}
}
if keyboard_check_pressed(vk_right){
	if selector[1] == 2{}
	else{
		selector[0] ++;
		selector[1] = 0;
	}
}
else if keyboard_check_pressed(vk_left){
	if selector[1] == 0{}
	else{
		selector[0] --;
		selector[1] = 0;
	}
}