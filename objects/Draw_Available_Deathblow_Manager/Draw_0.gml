/// @description Insert description here
// You can write your code in this editor
if generate == true{
	for (var i = 0; i > array_length(deathblow_list); i ++){
		for (var j = 0; j > string_length(scripture); j ++){
			var scripture_length = string_length(scripture);
			var cross_compare = "";
			while string_length(cross_compare) != string_length(scripture){
				cross_compare += deathblow_list[i][j];
			}
			if string_length(cross_compare) == string_length(scripture){
				array_push(array_to_print, deathblow_list[i]);
			}
		}
	}
}
show_debug_message(array_to_print);