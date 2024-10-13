/// @description Insert description here
// You can write your code in this editor
var xx = Character_1_Stat_Writer_Manager.x;
var yy = Character_1_Stat_Writer_Manager.y;
var cs = Character_1_Stat_Writer_Manager.current_speed;
var ts = Character_1_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+100, yy+(86*2)+32, cs/ts*100,0, speed_colour(cs, ts, "blue"), speed_colour(cs, ts, "blue"),0,1,0);

xx = Character_2_Stat_Writer_Manager.x;
yy = Character_2_Stat_Writer_Manager.y;
cs = Character_2_Stat_Writer_Manager.current_speed;
ts = Character_2_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+100, yy+(86*2)+32, cs/ts*100,0, speed_colour(cs, ts, "blue"), speed_colour(cs, ts, "blue"),0,1,0);

xx = Character_3_Stat_Writer_Manager.x;
yy = Character_3_Stat_Writer_Manager.y;
cs = Character_3_Stat_Writer_Manager.current_speed;
ts = Character_3_Stat_Writer_Manager.stat_block[4];
draw_healthbar(xx,yy+86*2,xx+100, yy+(86*2)+32, cs/ts*100,0, speed_colour(cs, ts, "blue"), speed_colour(cs, ts, "blue"),0,1,0);


xx = Enemy_1_Stat_Writer_Manager.x;
yy = Enemy_1_Stat_Writer_Manager.y;
cs = Enemy_1_Stat_Writer_Manager.current_speed;
ts = Enemy_1_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+64+8,xx+100, yy+96+8, cs/ts*100,c_black, speed_colour(cs, ts, ""), speed_colour(cs, ts, ""),0,1,0);

xx = Enemy_2_Stat_Writer_Manager.x;
yy = Enemy_2_Stat_Writer_Manager.y;
cs = Enemy_2_Stat_Writer_Manager.current_speed;
ts = Enemy_2_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+64+8,xx+100, yy+96+8, cs/ts*100,c_black, speed_colour(cs, ts, ""), speed_colour(cs, ts, ""),0,1,0);

xx = Enemy_3_Stat_Writer_Manager.x;
yy = Enemy_3_Stat_Writer_Manager.y;
cs = Enemy_3_Stat_Writer_Manager.current_speed;
ts = Enemy_3_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+64+8,xx+100, yy+96+8, cs/ts*100,c_black, speed_colour(cs, ts, ""), speed_colour(cs, ts, ""),0,1,0);

xx = Enemy_4_Stat_Writer_Manager.x;
yy = Enemy_4_Stat_Writer_Manager.y;
cs = Enemy_4_Stat_Writer_Manager.current_speed;
ts = Enemy_4_Stat_Writer_Manager.stat_block[7];
draw_healthbar(xx,yy+64+8,xx+100, yy+96+8, cs/ts*100,c_black, speed_colour(cs, ts, ""), speed_colour(cs, ts, ""),0,1,0);



xx = Enemy_1_Stat_Writer_Manager.x;
yy = Enemy_1_Stat_Writer_Manager.y;
cs = Enemy_1_Stat_Writer_Manager.current_hp;
ts = Enemy_1_Stat_Writer_Manager.stat_block[2];
if Enemy_1_Stat_Writer_Manager.current_hp <= 0{
	draw_rectangle_color(xx,yy+32,xx+100, yy+64,$404040,$404040,$404040,$404040,false);
}
draw_healthbar(xx,yy+32,xx+100, yy+64, cs/ts*100,0, health_colour(Enemy_1_Stat_Writer_Manager.current_hp, Enemy_1_Stat_Writer_Manager.stat_block[2]), health_colour(Enemy_1_Stat_Writer_Manager.current_hp, Enemy_1_Stat_Writer_Manager.stat_block[2]),0,false,0);

xx = Enemy_2_Stat_Writer_Manager.x;
yy = Enemy_2_Stat_Writer_Manager.y;
cs = Enemy_2_Stat_Writer_Manager.current_hp;
ts = Enemy_2_Stat_Writer_Manager.stat_block[2];
if Enemy_2_Stat_Writer_Manager.current_hp <= 0{
	draw_rectangle_color(xx,yy+32,xx+100, yy+64,$404040,$404040,$404040,$404040,false);
}
draw_healthbar(xx,yy+32,xx+100, yy+64, cs/ts*100,0, health_colour(Enemy_2_Stat_Writer_Manager.current_hp, Enemy_2_Stat_Writer_Manager.stat_block[2]), health_colour(Enemy_2_Stat_Writer_Manager.current_hp, Enemy_2_Stat_Writer_Manager.stat_block[2]),0,false,0);

xx = Enemy_3_Stat_Writer_Manager.x;
yy = Enemy_3_Stat_Writer_Manager.y;
cs = Enemy_3_Stat_Writer_Manager.current_hp;
ts = Enemy_3_Stat_Writer_Manager.stat_block[2];
if Enemy_3_Stat_Writer_Manager.current_hp <= 0{
	draw_rectangle_color(xx,yy+32,xx+100, yy+64,$404040,$404040,$404040,$404040,false);
}
draw_healthbar(xx,yy+32,xx+100, yy+64, cs/ts*100,0, health_colour(Enemy_3_Stat_Writer_Manager.current_hp, Enemy_3_Stat_Writer_Manager.stat_block[2]), health_colour(Enemy_3_Stat_Writer_Manager.current_hp, Enemy_3_Stat_Writer_Manager.stat_block[2]),0,false,0);

xx = Enemy_4_Stat_Writer_Manager.x;
yy = Enemy_4_Stat_Writer_Manager.y;
cs = Enemy_4_Stat_Writer_Manager.current_hp;
ts = Enemy_4_Stat_Writer_Manager.stat_block[2];
if Enemy_4_Stat_Writer_Manager.current_hp <= 0{
	draw_rectangle_color(xx,yy+32,xx+100, yy+64,$404040,$404040,$404040,$404040,false);
}
draw_healthbar(xx,yy+32,xx+100, yy+64, cs/ts*100,0, health_colour(Enemy_4_Stat_Writer_Manager.current_hp, Enemy_4_Stat_Writer_Manager.stat_block[2]), health_colour(Enemy_4_Stat_Writer_Manager.current_hp, Enemy_4_Stat_Writer_Manager.stat_block[2]),0,false,0);
//show_debug_message(Enemy_4_Stat_Writer_Manager.current_hp / Enemy_4_Stat_Writer_Manager.stat_block[2]);