/// @description Insert description here
// You can write your code in this editor
try{
	show_debug_message(global.party_members);
	stat_block = global.party_members[1];
	current_hp = stat_block[2];
	current_ep = stat_block[3];
	current_ap = 0;
	current_speed = 1;
}
catch( _exception){}