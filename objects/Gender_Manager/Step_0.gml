/// @description Insert description here
// You can write your code in this editor
if room == Room_Ini or room = Room_Player_Select{
	if keyboard_check_pressed(vk_f3) and Jacob_Swap == false{
		Jacob_Swap = true;
		change_made = false;
	}
	else if keyboard_check_pressed(vk_f3) and Jacob_Swap == true{
		Jacob_Swap = false;
		change_made = false;
	}
	
	if keyboard_check_pressed(vk_f4) and Ella_Swap == false{
		Ella_Swap = true;
		change_made = false;
	}
	else if keyboard_check_pressed(vk_f4) and Ella_Swap == true{
		Ella_Swap = false;
		change_made = false;
	}
	
if change_made == false{
	try{
		if Jacob_Swap == true{
			var jacob_array = Universal_Player_Stat_Manager.all_character_array[0];
			jacob_array[1] = "Jacee";
			Universal_Player_Stat_Manager.all_character_array[0] = jacob_array;
			Button_Jacob.button_text = "Jacee";
			Button_Jacob.sprite_index = Z_Jacee;
		}
		else if Jacob_Swap == false{
			var jacob_array = Universal_Player_Stat_Manager.all_character_array[0];
			jacob_array[1] = "Jacob";
			Universal_Player_Stat_Manager.all_character_array[0] = jacob_array;
			Button_Jacob.button_text = "Jacob";
			Button_Jacob.sprite_index = Z_Jacob;
		}
		if Ella_Swap == true{
			var ella_array = Universal_Player_Stat_Manager.all_character_array[1];
			ella_array[1] = "Evan";
			Universal_Player_Stat_Manager.all_character_array[1] = ella_array;
			Button_Ella.button_text = "Evan";
			Button_Ella.sprite_index = Z_Evan;
		}
		else if Ella_Swap == false{
			var ella_array = Universal_Player_Stat_Manager.all_character_array[1];
			ella_array[1] = "Ella";
			Universal_Player_Stat_Manager.all_character_array[1] = ella_array;
			Button_Ella.button_text = "Ella";
			Button_Ella.sprite_index = Z_Ella;
		}
		change_made = true;
	}
	catch(_exception){
		if Jacob_Swap == true{
			UIC.Jacob_Available = 2;
		}
		else if Jacob_Swap == false{
			UIC.Jacob_Available = 1;	
		}
		
		if Ella_Swap == true{
			UIC.Ella_Available = 2;
		}
		else if Ella_Swap == false{
			UIC.Ella_Available = 1;	
		}
		change_made = true;
	}
}
}