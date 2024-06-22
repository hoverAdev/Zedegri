/// @description Insert description here
// You can write your code in this editor 152

if All_Selector_Create == true{
	if y != 96{
		y = 64;
	}
	if keyboard_check_released(vk_left){
	 hover --;
	 if hover < 1{
		hover = 1;
	 }
	}
	else if keyboard_check_released(vk_right){
	 hover ++;
	 if hover > 7{
		hover = 7;
	 }
	}
	
	if hover == 1{
	 x = Character_1_Stat_Writer_Manager.x;
	}
	else if hover == 2{
	 x = Character_2_Stat_Writer_Manager.x;
	}
	else if hover == 3{
	 x = Character_3_Stat_Writer_Manager.x;
	}
	else if hover == 4{
	 x = Enemy_1_Stat_Writer_Manager.x;
	}
	else if hover == 5{
	 x = Enemy_2_Stat_Writer_Manager.x;
	}
	else if hover == 6{
	 x = Enemy_3_Stat_Writer_Manager.x;
	}
	else if hover == 7{
	 x = Enemy_4_Stat_Writer_Manager.x;
	}	
	//show_debug_message(hover);
}

if hover == 0 and y != -64{
	x = 990;
	y = -64;
}
if keyboard_check_pressed(vk_enter){
	persistent_hover = hover;
	confirmed_input = true;
	hover = 0;
}