// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function json_to_array(JSON){
	array = [];
	array_insert(array, 0, JSON.ATK);
	array_insert(array, 1, JSON.DEF);
	array_insert(array, 2, JSON.SPD);
	array_insert(array, 3, JSON.HP);
	return array;
}

function health_colour(current_hp, maximum_hp){
	var percentage = current_hp / maximum_hp;
	if percentage > 1{
		percentage = 1;	
	}
	var green = percentage * 255;
	var red = 255 - green;
	return make_color_rgb(red, green, 0);
}