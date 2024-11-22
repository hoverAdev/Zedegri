// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outlined(xx, yy, outline_color, string_color, printed_string) { 
	var outline_radius = 1;
	// Outline
	draw_set_color(outline_color);  
	for(i = -1; i < 2; i++) {
		for(j = -1; j < 2; j++) {
			draw_text(xx + (i*outline_radius), yy + (j*outline_radius), printed_string); 
		}
	}
  
	// Text  
	draw_set_color(string_color);
	draw_text(xx, yy, printed_string);  
}