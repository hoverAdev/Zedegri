/// @description Insert description here
// You can write your code in this edit
input_Text = "";
enable = true;
var null_character = Universal_Player_Stat_Manager.all_enemy_array.XXX;
global.enemy_members = [null_character,null_character,null_character,null_character];
global.reward = 0;
i = 0;
disabled_selection = false;

var e = Universal_Player_Stat_Manager.all_enemy_array;

scene = [
//Tutorial Suid
["L0", e.LCB, 0.5],
// LAHMUR OUTSIDE: CB TW SL
["L1", e.LCB,e.LCB, 1],
["L2", e.LTW,e.LTW, 1],
["L3", e.LSL,e.LSL, 1],
["L4", e.LCB,e.LTW, 1.1],
["L5", e.LCB,e.LSL, 1.2],
// LAHMUR MOUNTAIN: MB SW DL
["LM1", e.LMB,e.LMB, 1.3],
["LM2", e.LMB,e.LDL, 1.3], //THE REAL ONE
["LM3", e.LSW,e.LDL, 1.3],
["LM4", e.LSW,e.LSW, 1.3],
// JIZO INTRO BATTLE
["B0", e.LZZ,e.LZZ,e.LZZ,e.LZZ, 6],
["B1", e, 5],
// DIMWOOD FOREST: FLB FTT FSF
["D1", e.FLB,e.FTT, 1.8],
["D2", e.FTT,e.FTT, 1.8],
["D3", e.FSF, 2.4], //Human Only
["D4", e.FSF,e.FSF, 2.1], //Zedegri Only
["D5", e.FTT,e.FLB,e.FTT, 2.4],
// MAINLAND MINA: 
["M1",],
["M2",],
["M3",],
["M4",],
["M5", e.ETHEL, 999],
]