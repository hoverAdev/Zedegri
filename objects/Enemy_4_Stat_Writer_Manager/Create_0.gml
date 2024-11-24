/// @description Insert description here
// You can write your code in this editor
show_debug_message(global.enemy_members);
//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
try{stat_block = global.enemy_members[3];}catch (_exception){stat_block = Universal_Player_Stat_Manager.all_enemy_array.XXX;}
random_modifier = random_range(0.9,1.2)
stat_block[2] = floor(stat_block[2] * random_modifier);
current_hp = stat_block[2];
current_def = floor(stat_block[6] * random_range(0.8,1.5));
//current_ep = stat_block[3];
//current_ap = 0;
current_speed = random_range(1, stat_block[7]);
turn_start = false;
//deathblow_performed = false;
turn_counter = 0;
//turn_cancelled = false;
action_light = false;
action_heavy = false;
action_fierce = false;

e2t = false;

atk_1 = stat_block[3];
atk_2 = stat_block[4];
atk_3 = stat_block[5];

//MODIFIER
dmg_mod_05 = 0;
dmg_mod_15 = 0;
dmg_mod_20 = 0;

def_mod_05 = 0;
def_mod_15 = 0;
def_mod_20 = 0;

var is_modifying = true;
while is_modifying{
	var dmg_modifier = irandom_range(1,50);
	if dmg_modifier == 2{
		var type_dmg_modifier = random_range(1,100);
		if type_dmg_modifier < 20{
			dmg_mod_05 += 1;
		}
		else if type_dmg_modifier < 70{
			dmg_mod_15 += 1;
		}
		else {
			dmg_mod_20 += 1;	
		}
	}
	
	var def_modifier = irandom_range(1,50);
	if def_modifier == 2{
		var type_def_modifier = random_range(1,100);
		if type_def_modifier < 20{
			def_mod_05 += 1;
		}
		else if type_def_modifier < 70{
			def_mod_15 += 1;
		}
		else {
			def_mod_20 += 1;	
		}
	}
	else {is_modifying = false;}
}

