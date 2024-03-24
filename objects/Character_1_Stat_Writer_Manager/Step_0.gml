/// @description Insert description here
// You can write your code in this editor
if current_speed >= stat_block[4]{
	global.all_state_pause = 1;
	buttons_spawned = false;
	current_speed = 0;

	
}
if global.all_state_pause != 1{ current_speed += 0.75; }

if global.all_state_pause == 1{
	if buttons_spawned == false{
		instance_create_layer(64, 574+64, layer, Button_Z);
		instance_create_layer(128+32, 574+64, layer, Button_X);
		instance_create_layer(64+128+64, 574+64, layer, Button_C);
		buttons_spawned = true;
		if current_ap == 0 and deathblow_performed == false{ // NO AP AND NO DEATHBLOW
			current_ap = 3 + turn_counter;
		}
		else if current_ap != 0 and deathblow_performed == false{ // YES AP AND NO DEATHBLOW
			current_ap += 3 + turn_counter;
		}
		else{ current_ap = 3; deathblow_performed = false;}
		if current_ap > global.MAX_AP{ current_ap = global.MAX_AP;}
	}
	if buttons_spawned == true {
		
		if keyboard_check_pressed(ord("1")){
			targetted_enemy = 1;
			show_debug_message("Enemy 1 Selected");
			Black_Overlay.covered = false;
		}
		else if keyboard_check_pressed(ord("2")){
			targetted_enemy = 2;
			show_debug_message("Enemy 2 Selected");
			Black_Overlay.covered = false;
		}
		else if keyboard_check_pressed(ord("3")){
			targetted_enemy = 3;
			show_debug_message("Enemy 3 Selected");
			Black_Overlay.covered = false;
		}
		else if keyboard_check_pressed(ord("4")){
			targetted_enemy = 4;
			show_debug_message("Enemy 4 Selected");
			Black_Overlay.covered = false;
		}
		//if Black_Overlay == false{Draw_Available_Deathblow_Manager.generate = true;}
		Draw_Available_Deathblow_Manager.generate = true;
		if Button_C.button_c_pressed == true and current_ap >= 3{
			//show_debug_message(stat_block[7]);
			deathblow_string += "C";
			dmg = stat_block[7];
			var crit_roll = irandom_range(1, 20);
			var double_crit_roll = irandom_range(1, 20);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.8, 1.4));
			if crit_roll == 20{
				dmg *= 2;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 2;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > global.fierce_evade{
					dmg = 0;
				}
			}
			show_debug_message(dmg);
			current_ap -= 3;
		}
		if Button_Z.button_z_pressed == true and current_ap >= 1{
			//show_debug_message(stat_block[7]);
			deathblow_string += "Z";
			dmg = stat_block[5];
			var crit_roll = irandom_range(1, 20);
			var double_crit_roll = irandom_range(1, 20);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.8, 1.4));
			if crit_roll == 20{
				dmg *= 2;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 2;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > global.fierce_evade{
					dmg = 0;
				}
			}
			show_debug_message(dmg);
			current_ap -= 1;
		}
		if Button_X.button_x_pressed == true and current_ap >= 1{
			//show_debug_message(stat_block[7]);
			deathblow_string += "X";
			dmg = stat_block[6];
			var crit_roll = irandom_range(1, 20);
			var double_crit_roll = irandom_range(1, 20);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.8, 1.4));
			if crit_roll == 20{
				dmg *= 2;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 2;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > global.fierce_evade{
					dmg = 0;
				}
			}
			show_debug_message(dmg);
			current_ap -= 2;
		}
		Draw_Available_Deathblow_Manager.scripture = deathblow_string;
		if deathblow_string == "ZC"{
			dmg *= 1.25;
			current_ap = 0;
			deathblow_performed = true;
		}
		else if deathblow_string == "XC" or deathblow_string =="ZZC"{
			dmg *= 1.75;
			current_ap = 0;
			deathblow_performed = true;
		}
		else if deathblow_string == "ZXC" or deathblow_string =="XZC" or deathblow_string =="ZZZC"{
			dmg *= 2.25;
			current_ap = 0;
			deathblow_performed = true;
		}
		else if deathblow_string == "ZXZC" or deathblow_string =="XZZC" or deathblow_string =="ZZXC" or deathblow_string =="ZZZZC"{
			dmg *= 2.75;
			current_ap = 0;
			deathblow_performed = true;
		}
		if current_ap == 0 or keyboard_check_pressed(ord("O")){
			global.all_state_pause = 0;
			turn_counter ++;	
			Black_Overlay.covered = true;
			obj_enemy_selector.x = 9999;
			obj_enemy_selector.y = 9999;
			Draw_Available_Deathblow_Manager.generate = false;
		}
	}
}