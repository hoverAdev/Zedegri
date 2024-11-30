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
["B0", "LZZ","LZZ","LZZ","LZZ", 6],
["B1", "", 5],
// DIMWOOD FOREST: FLB FTT FSF
["D1", "FLB","FTT", 1.8],
["D2", "FTT","FTT", 1.8],
["D3", "FSF", 2.4], //Human Only
["D4", "FSF","FSF", 2.1], //Zedegri Only
["D5", "FTT","FLB","FTT", 2.4],
// MAINLAND MINA: 
["M1","DRM","DHE", 2.4],
["M2",],
["M3",],
["M4",],
["M5", "ETHEL", 999],
]