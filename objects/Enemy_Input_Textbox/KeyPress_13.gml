/// @description Insert description here
// You can write your code in this editor
if disabled_selection == false{
	var set = scene[int64(input_Text)];
	for(var i = 1; i < array_length(set); i++;){
		for(var j = 0; j < array_length(Universal_Player_Stat_Manager.all_enemy_array); j++){
			if Universal_Player_Stat_Manager.all_enemy_array[j][0] == set[i]{
				array_push(global.enemy_members, Universal_Player_Stat_Manager.all_enemy_array[j]);
			}
		}
	}
	room_goto(Room_Combat);
}