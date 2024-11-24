// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function Validate_Enemy_Array(array){
	var null_character = Universal_Player_Stat_Manager.all_enemy_array.XXX;
	for (i = 0; i < array_length(array); i++){
		//show_debug_message(array[i]);
		if array[i] == undefined{
			array[i] = null_character;
		}
	}
	return array;
}