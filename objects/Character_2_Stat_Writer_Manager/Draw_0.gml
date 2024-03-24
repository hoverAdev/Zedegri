/// @description Insert description here
// You can write your code in this editor
try{
draw_set_halign(fa_left);
draw_set_valign(fa_top);
printed_string = string("{0} \n{1}/{2} \n{3}/{4} \n{5}/{6}",
stat_block[1], current_hp, stat_block[2], current_ep, stat_block[3], current_ap, stat_block[4],);
draw_text(x,y,printed_string);
draw_healthbar(x,y+84,x+10000, y+100, current_speed/stat_block[4],c_black, c_ltgray, c_white,0,1,0);

}
catch( _exception){}