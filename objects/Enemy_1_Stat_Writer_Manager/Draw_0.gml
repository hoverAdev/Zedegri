/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
draw_set_font(font_arial_amaterasu_sized); draw_text(x,y,stat_block[1]);draw_set_font(font_arial);
printed_string = string("\n{0}/{1}",current_hp, stat_block[2]);
draw_text(x,y,printed_string);

Draw_Modifier(x,y-88,dmg_mod_05,dmg_mod_15,dmg_mod_20,def_mod_05,def_mod_15,def_mod_20);
draw_healthbar(x,y+84,x+10000, y+100, current_speed/stat_block[7],c_black, c_ltgray, c_white,0,1,0);

if turn_start == true{
	
}