/// @description Insert description here
// You can write your code in this edit
input_Text = "";
enable = true;
var null_character = Universal_Player_Stat_Manager.all_enemy_array[2];
global.enemy_members = [null_character,null_character,null_character,null_character];
global.reward = 0;
i = 0;
disabled_selection = false;

scene = [
//Tutorial Suid
["L0", "LCB", 0.5],
// LAHMUR OUTSIDE: CB TW SL
["L1", "LCB","LCB", 1],
["L2", "LTW","LTW", 1],
["L3", "LSL","LSL", 1],
["L4", "LCB","LTW", 1.1],
["L5", "LCB","LSL", 1.2],
// LAHMUR MOUNTAIN: MB SW DL
["LM1", "LMB","LMB", 1.3],
["LM2", "LMB","LDL", 1.3], //THE REAL ONE
["LM3", "LSW","LDL", 1.3],
["LM4", "LSW","LSW", 1.3],
// JIZO INTRO BATTLE
["B0", "LZZ","LZZ","LZZ","LZZ", 15],
// DIMWOOD FOREST: FLB FTT FSF
["D1", "FLB","FTT", 1.8],
["D2", "FTT","FTT", 1.8],
["D3", "FSF","FSF","FTT", 2.1],
["D4", "FLB","FSF","FLB", 2.1],
["D5", "FTT","FSF","FLB","FTT", 2.4],
// MAINLAND MINA: 
["M1",],
["M2",],
["M3",],
["M4",],
["M5",],
]