/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if global.Mass_Deactivate == false{
draw_text(x + sprite_width / 2, y + sprite_height, button_text);}