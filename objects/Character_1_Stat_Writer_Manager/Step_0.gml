/// @description Insert description here
// You can write your code in this editor
if current_hp <= 0{ current_speed = 0; }
if current_speed >= stat_block[4]{
	global.all_state_pause = 1;
	buttons_spawned = false;
	current_speed = 0;
	Black_Overlay.covered = false;
	spell_pookie = 1;
	if turn_counter > 2{
		turn_counter = 2;	
	}
	
	var random_message_intro = irandom_range(1,6);
	if random_message_intro == 1{
	Text_Chat_Manager.printed_string += string("\nIt's Your Turn {0}!",stat_block[1]);
	}
	else if random_message_intro == 2{
	Text_Chat_Manager.printed_string += string("\nGet In There {0}!",stat_block[1]);
	}
	else if random_message_intro == 3{
	Text_Chat_Manager.printed_string += string("\nYour Time To Shine {0}!",stat_block[1]);
	}
	else if random_message_intro == 4{
	Text_Chat_Manager.printed_string += string("\n{0}! The Stage Is Yours!",stat_block[1]);
	}
	else if random_message_intro == 5{
	Text_Chat_Manager.printed_string += string("\nNow Or Never {0}!",stat_block[1]);
	}
	else if random_message_intro == 6{
	Text_Chat_Manager.printed_string += string("\n{0}! The Heat Is On You!",stat_block[1]);
	}
	
	if current_ap == 0 and deathblow_performed == false{ // NO AP AND NO DEATHBLOW
		current_ap = 3 + turn_counter;
	}
	else if current_ap != 0 and current_ap < 3 and deathblow_performed == false{
		current_ap = 3;	
	}
	else if current_ap != 0 and deathblow_performed == false{ // YES AP AND NO DEATHBLOW
		current_ap += turn_counter;
	}
	else{
		current_ap = 3; 
		deathblow_performed = false; 
		turn_counter = 0;
		}
	if current_ap > global.MAX_AP{ current_ap = global.MAX_AP;}
	
	if current_ap >= 4{
		Draw_Available_Deathblow_Manager.deathblow_possible = true;
	}
	
	is_defending = false;
	player_1_engaged = true;
	
	dmg_modifiers = 1;
	if dmg_mod_05 > 0{
		dmg_mod_05 --;
		dmg_modifiers *= 0.5;
	}
	if dmg_mod_15 > 0{
		dmg_mod_15 --;
		dmg_modifiers *= 1.5;
	}
	if dmg_mod_20 > 0{
		dmg_mod_20 --;
		dmg_modifiers *= 2;
	}
	
	def_modifiers = 1;// DEFENCE MULTIPLIER APPLICATION
	if def_mod_05 > 0{
		def_mod_05 --;
		def_modifiers *= 0.5;
	}
	if def_mod_15 > 0{
		def_mod_15 --;
		def_modifiers *= 1.5;
	}
	if def_mod_20 > 0{
		def_mod_20 --;
		def_modifiers *= 2;
	}
	current_def = stat_block[8] * def_modifiers
	
	dmg = 0;
	
}
if global.all_state_pause != 1{ current_speed += global.PLSG; }
//show_debug_message(assisted);
if global.all_state_pause == 1 and player_1_engaged {
	
	if assisting == 1{
		assisting = 0;
		Character_1_Stat_Writer_Manager.assisted -= assisted_boost;
	}
	else if assisting == 2{
		assisting = 0;
		Character_2_Stat_Writer_Manager.assisted -= assisted_boost;
	}
	else if assisting == 3{
		assisting = 0;
		Character_3_Stat_Writer_Manager.assisted -= assisted_boost;
	}
	
	
	obj_spell_selector.create_self = false;
	
	if keyboard_check_pressed(ord("1")) and ether_confirmed == false and assist_confirmed == false{
		targetted_enemy = 1;}
	else if keyboard_check_pressed(ord("2")) and ether_confirmed == false and assist_confirmed == false{
		targetted_enemy = 2;}
	else if keyboard_check_pressed(ord("3")) and ether_confirmed == false and assist_confirmed == false{
		targetted_enemy = 3;}
	else if keyboard_check_pressed(ord("4")) and ether_confirmed == false and assist_confirmed == false{
		targetted_enemy = 4;}
	else if keyboard_check_pressed(ord("S")) and assist_confirmed == false{
		ether_confirmed = true;
	}
	else if keyboard_check_pressed(ord("A")) and ether_confirmed == false{
		assist_confirmed = true;
	}
	else if keyboard_check_pressed(ord("D")){
		is_defending = true;
		if current_ap != global.MAX_AP{
			current_ap += 1;	
		}
		if current_ep != stat_block[3]{
			current_ep += 1;	
		}
		global.all_state_pause = 0;
		turn_counter ++;	
		Black_Overlay.covered = true;
		player_1_engaged = false;
		current_hp -= environment_damage(stat_block[2], stat_block[1]);
	}
		
	if targetted_enemy != 0 and ether_confirmed == false{
		Draw_Available_Deathblow_Manager.drawn_ep_values += 1;
		if Draw_Available_Deathblow_Manager.drawn_ep_values == 1{
			Draw_Available_Deathblow_Manager.current_ap = current_ap;}
		//Litter this shit with show_debug_message(); until you find out where the issue is
		//show_debug_message(targetted_enemy);
		
		if global.buttons_spawned == false{
		global.buttons_spawned = true;
		}
		//if Black_Overlay == false{Draw_Available_Deathblow_Manager.generate = true;}
		//Draw_Available_Deathblow_Manager.generate = true;
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
				Text_Chat_Manager.printed_string += string("\n{0} Crit!",stat_block[1]);
				if double_crit_roll == 20{dmg *= 2;Text_Chat_Manager.printed_string += string("\n{0} Double Crit!",stat_block[1]);}
			}else{
				if dodge_roll > global.fierce_evade{
				if array_contains(Draw_Available_Deathblow_Manager.deathblow_list,deathblow_string) == false{
					dmg = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Missed!",stat_block[1]);
				}}
			}
			//show_debug_message(dmg);
			current_ap -= 3;
		}
		if Button_Z.button_z_pressed == true and current_ap >= 1{
			//show_debug_message(stat_block[7]);
			deathblow_string += "Z";
			dmg = stat_block[5];
			//show_debug_message(dmg);
			var crit_roll = irandom_range(1, 20);
			var double_crit_roll = irandom_range(1, 20);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.8, 1.4));
			if crit_roll == 20{
				dmg *= 2;
				Text_Chat_Manager.printed_string += string("\n{0} Crit!",stat_block[1]);
				if double_crit_roll == 20{dmg *= 2;Text_Chat_Manager.printed_string += string("\n{0} Double Crit!",stat_block[1]);}
			}else{
				if dodge_roll > global.light_evade{
					dmg = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Missed!",stat_block[1]);
				}
			}
			//show_debug_message(dmg);
			current_ap -= 1;
		}
		if Button_X.button_x_pressed == true and current_ap >= 2{
			//show_debug_message(stat_block[7]);
			deathblow_string += "X";
			dmg = stat_block[6];
			var crit_roll = irandom_range(1, 20);
			var double_crit_roll = irandom_range(1, 20);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.8, 1.4));
			if crit_roll == 20{
				dmg *= 2;
				Text_Chat_Manager.printed_string += string("\n{0} Crit!",stat_block[1]);
				if double_crit_roll == 20{dmg *= 2;Text_Chat_Manager.printed_string += string("\n{0} Double Crit!",stat_block[1]);}
			}else{
				if dodge_roll > global.heavy_evade{
					dmg = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Missed!",stat_block[1]);
				}
			}
			//show_debug_message(dmg);
			current_ap -= 2;
		}
		//Draw_Available_Deathblow_Manager.scripture = deathblow_string;
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
		
		if targetted_enemy == 1{
			dmg -= Enemy_1_Stat_Writer_Manager.current_def;//6
			if dmg < 0{ dmg = 0;}
		}
		else if targetted_enemy == 2{
			dmg -= Enemy_2_Stat_Writer_Manager.current_def;//6
			if dmg < 0{ dmg = 0;}
		}
		else if targetted_enemy == 3{
			dmg -= Enemy_3_Stat_Writer_Manager.current_def;//6
			if dmg < 0{ dmg = 0;}
		}
		else if targetted_enemy == 4{
			dmg -= Enemy_4_Stat_Writer_Manager.current_def;//6
			if dmg < 0{ dmg = 0;}
		}
		
		//Apply Modifiers
		
		dmg *= dmg_modifiers;
		if dmg != 0{
		Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage!",stat_block[1], round(dmg));}
	//show_debug_message(targetted_enemy);
		if targetted_enemy == 1{
			Enemy_1_Stat_Writer_Manager.current_hp -= round(dmg);
			dmg = 0;
		}
		else if targetted_enemy == 2{
			Enemy_2_Stat_Writer_Manager.current_hp -= round(dmg);
			dmg = 0;
		}
		else if targetted_enemy == 3{
			Enemy_3_Stat_Writer_Manager.current_hp -= round(dmg);
			dmg = 0;
		}
		else if targetted_enemy == 4{
			Enemy_4_Stat_Writer_Manager.current_hp -= dmg;
			dmg = 0;
		}
	
		
		
		if current_ap == 0 or keyboard_check_pressed(ord("O")){
			//show_debug_message("Entered End");
			targetted_enemy = 0;
			deathblow_string = "";
			if deathblow_performed{Draw_Available_Deathblow_Manager.hidden_ep_values = true;}
			Draw_Available_Deathblow_Manager.deathblow_possible = false;
			Draw_Available_Deathblow_Manager.drawn_ep_values = 0
			global.all_state_pause = 0;
			turn_counter ++;	
			Black_Overlay.covered = true;
			obj_enemy_selector.x = 9999;
			obj_enemy_selector.y = 9999;
			global.buttons_spawned = false;
			player_1_engaged = false;
			current_hp -= environment_damage(stat_block[2], stat_block[1]);
		}
	}

	if ether_confirmed == true{
		draw_ether_menu = true;
		obj_spell_selector.create_self = true;
		//Select spell from Menu
		if keyboard_check_pressed(vk_delete){
			ether_confirmed = false;
			draw_ether_menu = false;
			obj_spell_selector.y = 352;
			obj_spell_selector.create_self = false;
		}
		//try{
			if keyboard_check_pressed(vk_up){
				spell_pookie -= 1;
				//show_debug_message(spell_pookie);
				obj_spell_selector.y -= 30;
			}
			if keyboard_check_pressed(vk_down){
				spell_pookie += 1;
				//show_debug_message(spell_pookie);
				obj_spell_selector.y += 30;
			}
			if keyboard_check_pressed(vk_enter) and invalid_input == true{
				if spell_pookie == 1{
					selected_spell = ether_array[0];
					invalid_input = false;
				}
				else if spell_pookie == 2{
					selected_spell = ether_array[1];
					invalid_input = false;
				}
				else if spell_pookie == 3{
					selected_spell = ether_array[2];
					invalid_input = false;
				}
				else if spell_pookie == 4{
					selected_spell = ether_array[3];
					invalid_input = false;
				}
				else if spell_pookie == 5{
					selected_spell = ether_array[4];
					invalid_input = false;
				}
				io_clear()
			}
			
			try{ if selected_spell[3] > current_ep {invalid_input = true;} }catch(_exception){}
		//Close menu and select enemy/teammate
				if invalid_input == false{
		obj_spell_selector.create_self = false;
				
		obj_spell_selector.y = 352;
		spell_pookie = 0;
				
		draw_ether_menu = false;
		obj_All_Selector.All_Selector_Create = true;
		if obj_All_Selector.y < 0{
			obj_All_Selector.hover = 1;	
		}
		//show_debug_message(targetted_creature);
				
		if obj_All_Selector.hover == 1{
			targetted_creature = Character_1_Stat_Writer_Manager.stat_block;
			target_code = 1;
		}
		else if obj_All_Selector.hover == 2{
			targetted_creature = Character_2_Stat_Writer_Manager.stat_block;
			target_code = 2;
		}
		else if obj_All_Selector.hover == 3{try{
			targetted_creature = Character_3_Stat_Writer_Manager.stat_block;
			target_code = 3;
			}
			catch(_exception){}
		}
		else if obj_All_Selector.hover == 4{
			targetted_creature = Enemy_1_Stat_Writer_Manager.stat_block;
			target_code = 4;
		}
		else if obj_All_Selector.hover == 5{
			targetted_creature = Enemy_2_Stat_Writer_Manager.stat_block;
			target_code = 5;
		}
		else if obj_All_Selector.hover == 6{
			targetted_creature = Enemy_3_Stat_Writer_Manager.stat_block;
			target_code = 6;
		}
		else if obj_All_Selector.hover == 7{
			targetted_creature = Enemy_4_Stat_Writer_Manager.stat_block;
			target_code = 7;
		}
		hover = obj_All_Selector.persistent_hover;
		//show_debug_message(hover);
	}
		
			
		
	//Multi-If statement to determine which way to process the spell
		
	//Second entering does not activate the following if
	var target_code_name = "";
	//show_debug_message(selected_spell, targetted_creature, obj_All_Selector.confirmed_input);
	try{
	var target_code_name = targetted_creature[0];}
	catch (_exception){}
	if selected_spell != [] and target_code_name != "" and obj_All_Selector.confirmed_input{
			Spell_Cast(target_code, selected_spell);
		
			//Deactivate ether_confirmed
			global.all_state_pause = 0;
			ether_confirmed = false;
			turn_counter ++;	
			Black_Overlay.covered = true;
			obj_enemy_selector.x = 9999;
			obj_enemy_selector.y = 9999;
			obj_All_Selector.x = 9999;
			obj_All_Selector.y = 9999;
			Draw_Available_Deathblow_Manager.generate = false;
			current_ep -= selected_spell[3];
			selected_spell = [];
			invalid_input = true;
			targetted_creature = "";
			obj_All_Selector.confirmed_input = false;
			obj_All_Selector.All_Selector_Create = false;
			player_1_engaged = false;
			draw_buff_screen = false;
			current_hp -= environment_damage(stat_block[2], stat_block[1]);
		
	}
}

	if assist_confirmed == true{
	
		if draw_assist_screen == false{
			draw_assist_screen = true;
		}
		var _con = false;
		if keyboard_check_pressed(ord("1")){
			Character_1_Stat_Writer_Manager.assisted += assisted_boost;
			_con = true;
			assisting = 1;
		}
		else if keyboard_check_pressed(ord("2")){
			Character_2_Stat_Writer_Manager.assisted += assisted_boost;
			_con = true;
			assisting = 2;
		}
		else if keyboard_check_pressed(ord("3")){
			Character_3_Stat_Writer_Manager.assisted += assisted_boost;
			_con = true;
			assisting = 3;
		}
		if _con{
			global.all_state_pause = 0;
			assist_confirmed = false;
			draw_assist_screen = false;
			turn_counter ++;	
			Black_Overlay.covered = true;
			player_1_engaged = false;
			current_hp -= environment_damage(stat_block[2], stat_block[1]);
		}
	}
}