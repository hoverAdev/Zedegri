/// @description Insert description here
// You can write your code in this editor	
enemy_list = string_split(input_Text, ", ");
show_debug_message(array_length(enemy_list));
//for loop for length of enemy list

for (var i = 0; i < array_length(enemy_list); i += 1){
	show_debug_message("in first for");
//isolate out position "i" in the list
var isolated_call_tag = enemy_list[i];
//for loop for length of all_enemy_array
	for (var j = 0; j < array_length(Universal_Player_Stat_Manager.all_enemy_array); j += 1){
		show_debug_message("in second for");
//separate out compared call tag for easier comparing
	var comparative_call_tag = Universal_Player_Stat_Manager.all_enemy_array[j][0];
//compare isolated string with all_enemy_array
	show_debug_message("{0}, {1}", isolated_call_tag, comparative_call_tag);
	if isolated_call_tag == comparative_call_tag{
//add positive result to enemy_members
		array_push(global.enemy_members, Universal_Player_Stat_Manager.all_enemy_array[j]);
//Universal_Player_Stat_Manager.all_enemy_array[j][0]
		}
	}
}
show_debug_message(global.enemy_members);
input_Text = "";
room_goto(Room_Combat);