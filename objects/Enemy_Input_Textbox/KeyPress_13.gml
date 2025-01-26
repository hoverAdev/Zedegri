/// @description Insert description here
// You can write your code in this editor
if disabled_selection == false{
	var scene_code = input_Text;
	var scene_array = [];
	var enemy_count;
	// Get scene from scene_code
	for (var i = 0; i < array_length(scene); i++){
		var analysis = scene[i];
		if string(analysis[0]) == scene_code{
			enemy_count = array_length(scene[i]) - 2;
			scene_array = scene[i];
			break;
		}
	}
	//show_debug_message(scene_array);
	
	global.reward = array_pop(scene_array);
	
	for (var j = 0; j < enemy_count; j++){ //It leaves the last array blank.
		var enemy_array = [];
		var enemy_search_code = scene_array[j + 1];	
		//show_debug_message(enemy_search_code); 
		
		for (var search = 0; search < array_length(Universal_Player_Stat_Manager.all_enemy_array); search ++){
			var current_enemy_analysis = Universal_Player_Stat_Manager.all_enemy_array[search];
			
			if string(enemy_search_code) = current_enemy_analysis[0]{
				enemy_array = Universal_Player_Stat_Manager.all_enemy_array[search];
			}
		}
		//show_debug_message(enemy_array);
		array_insert(global.enemy_members, j, enemy_array);
	}/*
	}catch(_exception){
	global.enemy_members = [array_last(Universal_Player_Stat_Manager.all_enemy_array),array_last(Universal_Player_Stat_Manager.all_enemy_array)];
	global.reward = 9999;
	}*/
	global.enemy_members = Validate_Enemy_Array(global.enemy_members);
	room_goto(Room_Combat);
	
}