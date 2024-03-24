/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.party_members);
stat_block = global.party_members[0];
current_hp = stat_block[2];
current_ep = stat_block[3];
current_ap = 0;
current_speed = 1;
turn_start = false;
deathblow_performed = false;
turn_counter = 0;
turn_cancelled = false;
targetted_enemy = 0;
deathblow_string = "";