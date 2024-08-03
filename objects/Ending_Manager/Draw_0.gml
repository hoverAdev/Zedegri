/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_arial);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if global.Ending == 1{
	if incrementor != reward_currency{
		incrementor ++;	
	}
	draw_text(room_width/2,room_height/2,string("Victory!\n{0}$",incrementor));
}
else {
	draw_text(room_width/2,room_height/2,"Failure\nThe Battle Ends Here");
}