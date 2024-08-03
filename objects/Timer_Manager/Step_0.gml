/// @description Insert description here
// You can write your code in this editor
if
room == Room_Combat and
Enemy_1_Stat_Writer_Manager.current_hp <= 0 and
Enemy_2_Stat_Writer_Manager.current_hp <= 0 and
Enemy_3_Stat_Writer_Manager.current_hp <= 0 and
Enemy_4_Stat_Writer_Manager.current_hp <= 0 {
	global.Ending = 1;
	room_goto(Room_Ending);
}
else if
Character_1_Stat_Writer_Manager.current_hp <= 0 and
Character_2_Stat_Writer_Manager.current_hp <= 0 and
Character_3_Stat_Writer_Manager.current_hp <= 0 {
	global.Ending = 0;
	room_goto(Room_Ending);
}