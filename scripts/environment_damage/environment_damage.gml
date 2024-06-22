// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function environment_damage(current_hp,name){
	var EVDMG = round(current_hp * (global.ENVDMG/100));
	current_hp -= EVDMG;
	if EVDMG != 0{
	Text_Chat_Manager.printed_string += string("\n{0} took {1} Damage from the Environment!",name, EVDMG);
	}
	return EVDMG;
}