/// @description Insert description here
// You can write your code in this edit
input_Text = "";
enable = true;
global.enemy_members = [];
global.reward = 0;
i = 0;
disabled_selection = false;

scene = [
//Tutorial Suid
[0, "LCB", 0.5],
// LAHMUR OUTSIDE: CB TW SL
[1, "LCB","LCB", 1],
[2, "LTW","LTW", 1],
[3, "LSL","LSL", 1],
[4, "LCB","LTW", 1],
[5, "LCB","LSL", 1],
// LAHMUR MOUNTAIN: MB SW DL
[6, "LMB","LMB","LMB", 1.3],
[7, "LMB","LMB","LDL", 1.3], //THE REAL ONE
[8, "LSW","LDL","LSW", 1.3],
[9, "LSW","LSW","LMB", 1.3],
// JIZO INTRO BATTLE
[10, "LZZ","LZZ","LZZ","LZZ", 15],
// DIMWOOD FOREST: FLB FTT FSF
[11, "FLB","FTT", 1.8],
[12, "FTT","FTT", 1.8],
[13, "FSF","FSF","FTT", 2.1],
[14, "FLB","FSF","FLB", 2.1],
[15, "FTT","FSF","FLB","FTT", 2.4],
// MAINLAND MINA: 
[16,],
[17,],
[18,],
[19,],
[20,],
]