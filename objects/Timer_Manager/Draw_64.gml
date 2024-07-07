/// @description Insert description here
// You can write your code in this editor
var xx = Character_1_Stat_Writer_Manager.x;
var yy = Character_1_Stat_Writer_Manager.y;
var cs = Character_1_Stat_Writer_Manager.current_speed;
var ts = Character_1_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+10000, yy+(86*2)+32, cs/ts,c_black, c_ltgray, c_white,0,1,0);

xx = Character_2_Stat_Writer_Manager.x;
yy = Character_2_Stat_Writer_Manager.y;
cs = Character_2_Stat_Writer_Manager.current_speed;
ts = Character_2_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+10000, yy+(86*2)+32, cs/ts,c_black, c_ltgray, c_white,0,1,0);

xx = Character_3_Stat_Writer_Manager.x;
yy = Character_3_Stat_Writer_Manager.y;
cs = Character_3_Stat_Writer_Manager.current_speed;
ts = Character_3_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+10000, yy+(86*2)+32, cs/ts,c_black, c_ltgray, c_white,0,1,0);


xx = Enemy_1_Stat_Writer_Manager.x;
yy = Enemy_1_Stat_Writer_Manager.y;
cs = Enemy_1_Stat_Writer_Manager.current_speed;
ts = Enemy_1_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+80*2-32,xx+10000, yy+(80*2)-64, cs/ts,c_black, c_ltgray, c_white,0,1,0);

xx = Enemy_2_Stat_Writer_Manager.x;
yy = Enemy_2_Stat_Writer_Manager.y;
cs = Enemy_2_Stat_Writer_Manager.current_speed;
ts = Enemy_2_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+80*2-32,xx+10000, yy+(80*2)-64, cs/ts,c_black, c_ltgray, c_white,0,1,0);

xx = Enemy_3_Stat_Writer_Manager.x;
yy = Enemy_3_Stat_Writer_Manager.y;
cs = Enemy_3_Stat_Writer_Manager.current_speed;
ts = Enemy_3_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+80*2-32,xx+10000, yy+(80*2)-64, cs/ts,c_black, c_ltgray, c_white,0,1,0);

xx = Enemy_4_Stat_Writer_Manager.x;
yy = Enemy_4_Stat_Writer_Manager.y;
cs = Enemy_4_Stat_Writer_Manager.current_speed;
ts = Enemy_4_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+80*2-32,xx+10000, yy+(80*2)-64, cs/ts,c_black, c_ltgray, c_white,0,1,0);