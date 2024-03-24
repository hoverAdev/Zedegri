/// @description Insert description here
// You can write your code in this editor
if array_length(global.party_members)!= 0 and keyboard_check_released(vk_backspace){
	most_recent_character = array_last(global.party_members);
	printed_string += string("{0}\n Max HP: {1}\n Defence: {2}\n Max EP: {3}\n Speed Stat: {4} \n Attacks: {5}/{6}/{7}\n", most_recent_character[1]);

}
draw_text(x,y,printed_string);