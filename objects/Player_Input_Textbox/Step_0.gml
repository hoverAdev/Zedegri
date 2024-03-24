/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check_pressed(vk_anykey){
	input_Text += keyboard_lastchar;
}
if keyboard_check_pressed(vk_backspace){
	input_Text = string_delete(input_Text, string_length(input_Text), 1);	
	//show_debug_message(character_array);
	for (var j = 0; j < array_length(Universal_Player_Stat_Manager.all_character_array); j += 1){
		show_debug_message("{0},{1}", input_Text, Universal_Player_Stat_Manager.all_character_array[j][0]);
		var comparitor = Universal_Player_Stat_Manager.all_character_array[j][0];
		if (input_Text == comparitor){
			array_insert(global.party_members, array_length(global.party_members), Universal_Player_Stat_Manager.all_character_array[j]);
			break;
		}
	}
	//Code, Name, HP, EP, Speed, Light, Heavy, Fierce, DEF
	//show_debug_message(i);
	input_Text = "";
	show_debug_message(global.party_members);
}

//show_debug_message("{0},{1},{2}", character_array[i], Universal_Player_Stat_Manager.all_character_array[j][0], i);