/// @description Insert description here
// You can write your code in this editor


if Character_1_Stat_Writer_Manager.is_defending{ draw_sprite_ext(defend_shield_asset,0,70,95,0.7,0.7,0,c_white,1); }
if Character_1_Stat_Writer_Manager.assisted > 0{ draw_sprite_ext(assist_shield_asset,0,70,160,0.7,0.7,0,c_white,1); }
if Character_1_Stat_Writer_Manager.assisted > 30{draw_sprite_ext(assist_shield_asset,0,70,220,0.7,0.7,0,c_white,1); }

if Character_2_Stat_Writer_Manager.is_defending{ draw_sprite_ext(defend_shield_asset,0,258,95,0.7,0.7,0,c_white,1); }
if Character_2_Stat_Writer_Manager.assisted > 0{ draw_sprite_ext(assist_shield_asset,0,258,160,0.7,0.7,0,c_white,1); }
if Character_2_Stat_Writer_Manager.assisted > 30{draw_sprite_ext(assist_shield_asset,0,258,220,0.7,0.7,0,c_white,1); }

if Character_3_Stat_Writer_Manager.is_defending{ draw_sprite_ext(defend_shield_asset,0,448,95,0.7,0.7,0,c_white,1); }
if Character_3_Stat_Writer_Manager.assisted > 0{ draw_sprite_ext(assist_shield_asset,0,448,160,0.7,0.7,0,c_white,1); }
if Character_3_Stat_Writer_Manager.assisted > 30{draw_sprite_ext(assist_shield_asset,0,448,220,0.7,0.7,0,c_white,1); }