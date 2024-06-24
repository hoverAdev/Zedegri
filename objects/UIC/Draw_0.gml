/// @description Tackles applying items
// You can write your code in this editor
draw_set_font(font_arial);
draw_text(x,y,"Item Selection\nPress [K] to Save or [L] to Load");

//Character Selector
yy = y + 32;
if Jacob_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Jacob");	
} yy += 32; draw_set_color(c_white);
if Ella_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Ella");	
} yy += 32; draw_set_color(c_white);
if Doc_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Doc");	
} yy += 32; draw_set_color(c_white);
if Abby_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Abby");	
} yy += 32; draw_set_color(c_white);
if Azin_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Azin");	
} yy += 32; draw_set_color(c_white);
if Fiona_Available{
	if selector == (yy-y)/32{draw_set_color(c_red);}
	draw_text(x,yy,"Azin");	
} yy += 32; draw_set_color(c_white);
//Catagory Picker

//List of Availables