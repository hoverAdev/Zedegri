draw_set_font(font_arial);
draw_set_halign(fa_center);

randomize();
global.all_state_pause = 0;
global.MAX_AP = 4;
global.light_evade = 95;
global.heavy_evade = 84;
global.fierce_evade = 72;
//Code, Name,  HP, EP,   Speed, Light, Heavy, Fierce, DEF
Character_1_Stat_Writer_Manager.stat_block[2] *= ceil( 1 + global.level / 15 );
Character_1_Stat_Writer_Manager.current_hp *= ceil( 1 + global.level / 15 );
Character_1_Stat_Writer_Manager.stat_block[5] *= ceil( 1 + global.level / 15 );
Character_1_Stat_Writer_Manager.stat_block[6] *= ceil( 1 + global.level / 15 );
Character_1_Stat_Writer_Manager.stat_block[7] *= ceil( 1 + global.level / 15 );

try{
Character_2_Stat_Writer_Manager.stat_block[2] *= ceil( 1 + global.level / 15 );
Character_2_Stat_Writer_Manager.current_hp *= ceil( 1 + global.level / 15 );
Character_2_Stat_Writer_Manager.stat_block[5] *= ceil( 1 + global.level / 15 );
Character_2_Stat_Writer_Manager.stat_block[6] *= ceil( 1 + global.level / 15 );
Character_2_Stat_Writer_Manager.stat_block[7] *= ceil( 1 + global.level / 15 );
}
catch (_exception){}

try{
Character_3_Stat_Writer_Manager.stat_block[2] *= ceil( 1 + global.level / 15 );
Character_3_Stat_Writer_Manager.current_hp *= ceil( 1 + global.level / 15 );
Character_3_Stat_Writer_Manager.stat_block[5] *= ceil( 1 + global.level / 15 );
Character_3_Stat_Writer_Manager.stat_block[6] *= ceil( 1 + global.level / 15 );
Character_3_Stat_Writer_Manager.stat_block[7] *= ceil( 1 + global.level / 15 );
}
catch (_exception){}