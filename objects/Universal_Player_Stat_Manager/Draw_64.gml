/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
draw_set_font(font_arial_amaterasu_sized);
draw_text_color(x,y,motd,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1.0)
if (global.partyMemberPosition >= 3){
	global.partyMemberPosition = 0;
}
draw_set_halign(fa_left);
draw_set_font(font_arial);
//show_debug_message(all_character_array[0][2]);