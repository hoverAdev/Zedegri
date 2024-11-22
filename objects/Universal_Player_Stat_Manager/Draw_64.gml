/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
draw_set_font(font_arial_amaterasu_sized);
draw_text(x,y,"1.7.Ambience1");
if (global.partyMemberPosition > 4){
	global.partyMemberPosition = 0;
}
draw_set_halign(fa_left);
draw_set_font(font_arial);
//show_debug_message(all_character_array[0][2]);