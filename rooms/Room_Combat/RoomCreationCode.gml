draw_set_font(font_arial);
draw_set_halign(fa_center);

randomize();
global.all_state_pause = 0;
global.light_evade = 97;
global.heavy_evade = 91;
global.fierce_evade = 78;
global.buttons_spawned = false;

var LVL_MOD = 1 + (global.level / 15);

//Code, Name,  HP, EP,   Speed, Light, Heavy, Fierce, DEF
Character_1_Stat_Writer_Manager.stat_block[2] = ceil(Character_1_Stat_Writer_Manager.stat_block[2] * LVL_MOD);
Character_1_Stat_Writer_Manager.current_hp    = ceil(Character_1_Stat_Writer_Manager.current_hp * LVL_MOD);
Character_1_Stat_Writer_Manager.stat_block[5] = ceil(Character_1_Stat_Writer_Manager.stat_block[5] * LVL_MOD);
Character_1_Stat_Writer_Manager.stat_block[6] = ceil(Character_1_Stat_Writer_Manager.stat_block[6] * LVL_MOD);
Character_1_Stat_Writer_Manager.stat_block[7] = ceil(Character_1_Stat_Writer_Manager.stat_block[7] * LVL_MOD);
Character_1_Stat_Writer_Manager.current_ep += floor(global.level / 10);
Character_1_Stat_Writer_Manager.stat_block[3] += floor(global.level / 10);

try{
Character_2_Stat_Writer_Manager.stat_block[2] = ceil(Character_2_Stat_Writer_Manager.stat_block[2] * LVL_MOD);
Character_2_Stat_Writer_Manager.current_hp    = ceil(Character_2_Stat_Writer_Manager.current_hp * LVL_MOD);
Character_2_Stat_Writer_Manager.stat_block[5] = ceil(Character_2_Stat_Writer_Manager.stat_block[5] * LVL_MOD);
Character_2_Stat_Writer_Manager.stat_block[6] = ceil(Character_2_Stat_Writer_Manager.stat_block[6] * LVL_MOD);
Character_2_Stat_Writer_Manager.stat_block[7] = ceil(Character_2_Stat_Writer_Manager.stat_block[7] * LVL_MOD);
Character_2_Stat_Writer_Manager.current_ep += floor(global.level / 10);
Character_2_Stat_Writer_Manager.stat_block[3] += floor(global.level / 10);
}
catch (_exception){Character_2_Stat_Writer_Manager.stat_block = Universal_Player_Stat_Manager.all_character_array[5]}

try{
Character_3_Stat_Writer_Manager.stat_block[2] = ceil(Character_3_Stat_Writer_Manager.stat_block[2] * LVL_MOD);
Character_3_Stat_Writer_Manager.current_hp    = ceil(Character_3_Stat_Writer_Manager.current_hp * LVL_MOD);
Character_3_Stat_Writer_Manager.stat_block[5] = ceil(Character_3_Stat_Writer_Manager.stat_block[5] * LVL_MOD);
Character_3_Stat_Writer_Manager.stat_block[6] = ceil(Character_3_Stat_Writer_Manager.stat_block[6] * LVL_MOD);
Character_3_Stat_Writer_Manager.stat_block[7] = ceil(Character_3_Stat_Writer_Manager.stat_block[7] * LVL_MOD);
Character_3_Stat_Writer_Manager.current_ep += floor(global.level / 10);
Character_3_Stat_Writer_Manager.stat_block[3] += floor(global.level / 10);
}
catch (_exception){Character_3_Stat_Writer_Manager.stat_block = Universal_Player_Stat_Manager.all_character_array[5]}