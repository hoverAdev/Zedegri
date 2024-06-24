/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("L")){
	draw_text(room_width/2,32,"Loaded");
}
else if keyboard_check(ord("K")){
	draw_text(room_width/2,32,"Saved");
}
if keyboard_check(vk_numpad0){ //For testing
	draw_text(room_width/2,32,string("Added {0} to Jacob",JC_AMR.name));
}