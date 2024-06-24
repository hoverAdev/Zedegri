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