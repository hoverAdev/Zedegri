/// @description Insert description here
// You can write your code in this editor
var s = global.PLSG;
var p1c = Character_1_Stat_Writer_Manager.current_speed;
var p2c = Character_2_Stat_Writer_Manager.current_speed;
var p3c = Character_3_Stat_Writer_Manager.current_speed;
var p1t = Character_1_Stat_Writer_Manager.stat_block[4];
var p2t = Character_2_Stat_Writer_Manager.stat_block[4];
var p3t = Character_3_Stat_Writer_Manager.stat_block[4];

if (p1c + s)/p1t >= 1 and (p2c + s)/p2t >= 1{
	Character_2_Stat_Writer_Manager.current_speed -= s;	
}
if (p1c + s)/p1t >= 1 and (p3c + s)/p3t >= 1{
	Character_3_Stat_Writer_Manager.current_speed -= s;	
}
if (p2c + s)/p2t >= 1 and (p3c + s)/p3t >= 1{
	Character_3_Stat_Writer_Manager.current_speed -= s;	
}