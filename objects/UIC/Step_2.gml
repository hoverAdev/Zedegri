/// @description Insert description here
// You can write your code in this editor
if room == Room_Enemy_Select{
	persistent = false;	
}
if keyboard_check_pressed(vk_up) and selector_x == 0{
	if character_selector == 1{}
	else{
		character_selector --;	
	}
}
else if keyboard_check_pressed(vk_down) and selector_x == 0{
	if character_selector == 18{}
	else{
		character_selector ++;	
	}
}

if keyboard_check_pressed(vk_up) and selector_x == 1{
	if option_selector == 0{}
	else{
		option_selector --;	
	}
}
else if keyboard_check_pressed(vk_down) and selector_x == 1{
	if option_selector == 2{}
	else{
		option_selector ++;	
	}
}

if keyboard_check_pressed(vk_up) and selector_x == 2{
	if item_selector <= 0{}
	else{
		item_selector --;	
	}
}
else if keyboard_check_pressed(vk_down) and selector_x == 2{
	if item_selector >= array_length(documented_list) - 1 {}
	else{
		item_selector ++;	
	}
}

if keyboard_check_pressed(vk_right){
	if selector_x == 2 {}
	else{
		selector_x ++;	
	}
}
else if keyboard_check_pressed(vk_left){
	if selector_x == 0 {}
	else{
		selector_x --;
	}
}