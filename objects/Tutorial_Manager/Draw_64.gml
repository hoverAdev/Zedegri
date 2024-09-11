/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_arial_amaterasu_sized);
if keyboard_check_pressed(ord("I")) and Is_Tutorial_Active == false{
	Is_Tutorial_Active = true;
	Draw_Background_Shade = true;
	io_clear();
}
else if keyboard_check_pressed(ord("I")) and Is_Tutorial_Active == true{
	Is_Tutorial_Active = false;
	Draw_Background_Shade = false;
	io_clear();
}


if Is_Tutorial_Active == false{
	draw_set_halign(fa_center); draw_set_valign(fa_middle);
	draw_text(x,y,"Press [I] to activate TUTORIAL Mode");
}
else if Is_Tutorial_Active == true{
	draw_set_halign(fa_center); draw_set_valign(fa_middle);
	draw_text(x,y,"TUTORIAL Mode On");
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);