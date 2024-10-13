/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(font_arial_small);

var MAX_STRING = 8;
//Separate string
var string_as_array = string_split(printed_string,"\n");
if array_length(string_as_array) > MAX_STRING{
	array_shift(string_as_array);
}
//show_debug_message(printed_string);
printed_string = string_replace_all(string_replace_all(string_replace_all(string_replace_all(string(string_as_array),"[",""),"]",""),",","\n"),"\u0022","");
draw_text_outlined(x,y,c_black, c_white, printed_string);