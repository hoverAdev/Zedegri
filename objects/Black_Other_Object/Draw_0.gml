/// @description Insert description here
// You can write your code in this editor
var LVL_MOD = 1 + (global.level / 15 * 1.6);
//Code, Name, HP, EP, Speed, Light, Heavy, Fierce, DEF, Stagger
//0     1     2   3   4      5      6      7       8    9
draw_self();
if array_length(global.party_members) > 0{
	draw_text_outlined(500,850,c_black,c_white,string( "{0}\nMax HP: {1}\nDefence: {2}\nMax EP: {3}\nSpeed: {4}\nAttacks: {5}/{6}/{7}",
	global.party_members[0][1],	ceil(global.party_members[0][2] * LVL_MOD), global.party_members[0][8], global.party_members[0][3] + floor(global.level / 10),
	global.party_members[0][4], ceil(global.party_members[0][5] * LVL_MOD), ceil(global.party_members[0][6] * LVL_MOD), ceil(global.party_members[0][7] * LVL_MOD) ) );
}
if array_length(global.party_members) > 1{
	draw_text_outlined(820,850,c_black,c_white,string( "{0}\nMax HP: {1}\nDefence: {2}\nMax EP: {3}\nSpeed: {4}\nAttacks: {5}/{6}/{7}",
	global.party_members[1][1],	ceil(global.party_members[1][2] * LVL_MOD), global.party_members[1][8], global.party_members[1][3] + floor(global.level / 10),
	global.party_members[1][4], ceil(global.party_members[1][5] * LVL_MOD), ceil(global.party_members[1][6] * LVL_MOD), ceil(global.party_members[1][7] * LVL_MOD) ) );
}
if array_length(global.party_members) > 2{
	draw_text_outlined(1140,850,c_black,c_white,string( "{0}\nMax HP: {1}\nDefence: {2}\nMax EP: {3}\nSpeed: {4}\nAttacks: {5}/{6}/{7}",
	global.party_members[2][1],	ceil(global.party_members[2][2] * LVL_MOD), global.party_members[2][8], global.party_members[2][3] + floor(global.level / 10),
	global.party_members[2][4], ceil(global.party_members[2][5] * LVL_MOD), ceil(global.party_members[2][6] * LVL_MOD), ceil(global.party_members[2][7] * LVL_MOD) ) );
}

