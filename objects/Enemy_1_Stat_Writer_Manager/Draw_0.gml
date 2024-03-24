/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
printed_string = string("{0} \n{1}/{2}",
stat_block[1], current_hp, stat_block[2]);
draw_text(x,y,printed_string);
draw_healthbar(x,y+84,x+10000, y+100, current_speed/stat_block[7],c_black, c_ltgray, c_white,0,1,0);

if turn_start == true{
	
}