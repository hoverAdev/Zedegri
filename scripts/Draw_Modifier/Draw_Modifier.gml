// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draw_Modifier(x_val, y_val, atk0, atk1, atk2, def0, def1, def2){
	draw_set_font(font_arial_super_small);
	if string_length(string(atk0)) < 2 { atk0 = string("0{0}", atk0);}
	if string_length(string(atk1)) < 2 { atk1 = string("0{0}", atk1);}
	if string_length(string(atk2)) < 2 { atk2 = string("0{0}", atk2);}
	
	if string_length(string(def0)) < 2 { def0 = string("0{0}", def0);}
	if string_length(string(def1)) < 2 { def1 = string("0{0}", def1);}
	if string_length(string(def2)) < 2 { def2 = string("0{0}", def2);}
	
	var string_to_print = string("Attack    Defence\n0.5: {0}   0.5: {1}\n1.5: {2}   1.5: {3}\n2.0: {4}   2.0: {5}",
	atk0,def0, atk1,def1, atk2,def2);
	draw_text(x_val,y_val,string_to_print);
	draw_set_font(font_arial);
}