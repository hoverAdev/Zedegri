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
	player_3_engaged = true;
	
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
if global.all_state_pause == 1 and player_3_engaged {
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
		player_3_engaged = false;
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
			show_debug_message(dmg);
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
		
		if deathblow_performed{Draw_Available_Deathblow_Manager.hidden_ep_values = true;}
		
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
			player_3_engaged = false;
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
				show_debug_message(spell_pookie);
				obj_spell_selector.y -= 30;
			}
			if keyboard_check_pressed(vk_down){
				spell_pookie += 1;
				show_debug_message(spell_pookie);
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
				}
				else if obj_All_Selector.hover == 2{
					targetted_creature = Character_2_Stat_Writer_Manager.stat_block;
				}
				else if obj_All_Selector.hover == 3{try{
					targetted_creature = Character_3_Stat_Writer_Manager.stat_block;}
					catch(_exception){}
				}
				else if obj_All_Selector.hover == 4{
					targetted_creature = Enemy_1_Stat_Writer_Manager.stat_block;
				}
				else if obj_All_Selector.hover == 5{
					targetted_creature = Enemy_2_Stat_Writer_Manager.stat_block;
				}
				else if obj_All_Selector.hover == 6{
					targetted_creature = Enemy_3_Stat_Writer_Manager.stat_block;
				}
				else if obj_All_Selector.hover == 7{
					targetted_creature = Enemy_4_Stat_Writer_Manager.stat_block;
				}
				hover = obj_All_Selector.persistent_hover;
				show_debug_message(hover);
			}
		
			
		
		//Multi-If statement to determine which way to process the spell
		
		//Second entering does not activate the following if
		var target_code_name = "";
		//show_debug_message(selected_spell, targetted_creature, obj_All_Selector.confirmed_input);
		try{
		var target_code_name = targetted_creature[0];}
		catch (_exception){}
		if selected_spell != [] and target_code_name != "" and obj_All_Selector.confirmed_input{
			hp_recover = 0;
			var string_splitter;
			dmg = selected_spell[4];
			//show_debug_message("before stagger");
			if array_last(selected_spell) == "ATK"{}
			else if string_char_at(selected_spell[5],1) == "F"{ // Field Heal
				var string_splitter = int64(string("{0}{1}",string_char_at(selected_spell[5],2),string_char_at(selected_spell[5],3)));
				Character_1_Stat_Writer_Manager.current_hp += ceil(Character_1_Stat_Writer_Manager.stat_block[2] * string_splitter/100 * random_range(0.8,1.2));
				if Character_1_Stat_Writer_Manager.current_hp > Character_1_Stat_Writer_Manager.stat_block[2]{ Character_1_Stat_Writer_Manager.current_hp = Character_1_Stat_Writer_Manager.stat_block[2];}
				Character_2_Stat_Writer_Manager.current_hp += ceil(Character_2_Stat_Writer_Manager.stat_block[2] * string_splitter/100 * random_range(0.8,1.2));
				if Character_2_Stat_Writer_Manager.current_hp > Character_2_Stat_Writer_Manager.stat_block[2]{ Character_2_Stat_Writer_Manager.current_hp = Character_2_Stat_Writer_Manager.stat_block[2];}
				if Character_3_Stat_Writer_Manager.stat_block[4] != infinity{
					Character_3_Stat_Writer_Manager.current_hp += ceil(Character_3_Stat_Writer_Manager.stat_block[2] * string_splitter/100 * random_range(0.8,1.2));
					if Character_3_Stat_Writer_Manager.current_hp > Character_3_Stat_Writer_Manager.stat_block[2]{ Character_3_Stat_Writer_Manager.current_hp = Character_3_Stat_Writer_Manager.stat_block[2];}
				}
				Text_Chat_Manager.printed_string += string("\nAll your allies healed");
			}
			else if string_char_at(selected_spell[5],1) == "H"{ //    HEAL
				show_debug_message("in HEAL");
				string_splitter = int64(string("{0}{1}",string_char_at(selected_spell[5],2),string_char_at(selected_spell[5],3)));
				hp_recover = ceil(targetted_creature[2] * string_splitter/100 * random_range(0.8,1.2));
				var critical_success = false;
				var crit_dice = irandom_range(1,20); if crit_dice == 20{critical_success = true;}
				if critical_success == true{
					hp_recover *= 1.8;
					Text_Chat_Manager.printed_string += string("\n{0} Crited when healing!",stat_block[1]);
				}
				if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0]{
					Character_1_Stat_Writer_Manager.current_hp += hp_recover;
					if Character_1_Stat_Writer_Manager.current_hp > Character_1_Stat_Writer_Manager.stat_block[2]{
						Character_1_Stat_Writer_Manager.current_hp = Character_1_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Healed {1}!",Character_1_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0]{
					Character_2_Stat_Writer_Manager.current_hp += hp_recover;
					if Character_2_Stat_Writer_Manager.current_hp > Character_2_Stat_Writer_Manager.stat_block[2]{
						Character_2_Stat_Writer_Manager.current_hp = Character_2_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Healed {1}!",Character_2_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0]{
					Character_3_Stat_Writer_Manager.current_hp += hp_recover;
					if Character_3_Stat_Writer_Manager.current_hp > Character_3_Stat_Writer_Manager.stat_block[2]{
						Character_3_Stat_Writer_Manager.current_hp = Character_3_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Healed {1}!",Character_3_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0]{
					Enemy_1_Stat_Writer_Manager.current_hp += hp_recover;
					if Enemy_1_Stat_Writer_Manager.current_hp > Enemy_1_Stat_Writer_Manager.stat_block[2]{
						Enemy_1_Stat_Writer_Manager.current_hp = Enemy_1_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0]{
					Enemy_2_Stat_Writer_Manager.current_hp += hp_recover;
					if Enemy_2_Stat_Writer_Manager.current_hp > Enemy_2_Stat_Writer_Manager.stat_block[2]{
						Enemy_2_Stat_Writer_Manager.current_hp = Enemy_2_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0]{
					Enemy_3_Stat_Writer_Manager.current_hp += hp_recover;
					if Enemy_3_Stat_Writer_Manager.current_hp > Enemy_3_Stat_Writer_Manager.stat_block[2]{
						Enemy_3_Stat_Writer_Manager.current_hp = Enemy_3_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0]{
					Enemy_4_Stat_Writer_Manager.current_hp += hp_recover;
					if Enemy_4_Stat_Writer_Manager.current_hp > Enemy_4_Stat_Writer_Manager.stat_block[2]{
						Enemy_4_Stat_Writer_Manager.current_hp = Enemy_4_Stat_Writer_Manager.stat_block[2];
					}
					Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], hp_recover);
				}
				
			}
			else if string_char_at(selected_spell[5],1) == "E"{ //    DE/BUFF
				//show_debug_message("in DE/BUFF");
				var category = int64(string_char_at(selected_spell[5],2));
				var duration = int64(string("{0}{1}", string_char_at(selected_spell[5],4), string_char_at(selected_spell[5],5)));
				// PLAYER 1
				if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 0{
					Character_1_Stat_Writer_Manager.dmg_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_1_Stat_Writer_Manager.dmg_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_1_Stat_Writer_Manager.dmg_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				// PLAYER 2
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 0{
					Character_2_Stat_Writer_Manager.dmg_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_2_Stat_Writer_Manager.dmg_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_2_Stat_Writer_Manager.dmg_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				//PLAYER 3
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 0{
					Character_3_Stat_Writer_Manager.dmg_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_3_Stat_Writer_Manager.dmg_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_3_Stat_Writer_Manager.dmg_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				// ENEMY 1
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_1_Stat_Writer_Manager.dmg_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_1_Stat_Writer_Manager.dmg_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_1_Stat_Writer_Manager.dmg_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
				}
				// ENEMY 2
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_2_Stat_Writer_Manager.dmg_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_2_Stat_Writer_Manager.dmg_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_2_Stat_Writer_Manager.dmg_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
				}
				// ENEMY 3
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_3_Stat_Writer_Manager.dmg_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_3_Stat_Writer_Manager.dmg_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_3_Stat_Writer_Manager.dmg_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
				}
				// ENEMY 4
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 0{
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
					Enemy_4_Stat_Writer_Manager.dmg_mod_05 += duration;	
				}
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_4_Stat_Writer_Manager.dmg_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
				}
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_4_Stat_Writer_Manager.dmg_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
				}
			}
			else if selected_spell[5] == 0 or selected_spell[5] == 1 or selected_spell[5] == 2{ //    STAGGER
				//show_debug_message("in STAGGER");
				//show_debug_message(string("Targetted Creature: {0}, Array Last: {1}, Selected Spell: {2}"), targetted_creature, array_last(Enemy_1_Stat_Writer_Manager.stat_block), selected_spell[5]);
				var target_creature_code = targetted_creature[0];
				var party1_creature_code = Character_1_Stat_Writer_Manager.stat_block[0];
				var party2_creature_code = Character_2_Stat_Writer_Manager.stat_block[0];
				try{var party3_creature_code = Character_3_Stat_Writer_Manager[0];}catch(_exception){var party3_creature_code = "XX"}
				var enemy1_creature_code = Enemy_1_Stat_Writer_Manager.stat_block[0];
				try{var enemy2_creature_code = Enemy_2_Stat_Writer_Manager[0];}catch(_exception){var enemy2_creature_code = "XXX"}
				try{var enemy3_creature_code = Enemy_3_Stat_Writer_Manager[0];}catch(_exception){var enemy3_creature_code = "XXX"}
				try{var enemy4_creature_code = Enemy_4_Stat_Writer_Manager[0];}catch(_exception){var enemy4_creature_code = "XXX"}
			//	show_debug_message(string("TCC: {0}, P1C: {1}, P2C: {2}, P3C: {3}, E1C: {4}, E2C: {5}, E3C: {6}, E4C: {7}")
			//	,target_creature_code, party1_creature_code, party2_creature_code, party3_creature_code, enemy1_creature_code, enemy2_creature_code, enemy3_creature_code, enemy4_creature_code);
				
				if (target_creature_code == party1_creature_code){
					if (array_last(Character_1_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Character_1_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
					Character_1_Stat_Writer_Manager.current_speed = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
					}
					else{
						Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
					}
				}
				else if (target_creature_code == party2_creature_code){
					if (array_last(Character_2_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Character_2_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
								   Character_2_Stat_Writer_Manager.current_speed = 0;
				    Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
					}
					else{
						Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
					}
				}
				else if (target_creature_code == party3_creature_code){
					if (array_last(Character_3_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
						(array_last(Character_3_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
					Character_3_Stat_Writer_Manager.current_speed = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
					}
				}
				else{
					Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
				}
				//show_debug_message(target_creature_code, enemy1_creature_code);
				if (target_creature_code == enemy1_creature_code){
					show_debug_message(array_last(Enemy_1_Stat_Writer_Manager.stat_block),selected_spell[5]);
					if (array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
								   Enemy_1_Stat_Writer_Manager.current_speed = 0;
					Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
					}
					else{
						Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
					}
				}
				else if (target_creature_code == enemy2_creature_code){
					if (array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
								   Enemy_2_Stat_Writer_Manager.current_speed = 0;
			  Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
					}
					else{
						Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
					}
				}
				else if (target_creature_code == enemy3_creature_code){
					if (array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
								   Enemy_3_Stat_Writer_Manager.current_speed = 0;
			  Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
					}
					else{ Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);}
				}
				else if (target_creature_code == enemy4_creature_code){
					if (array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
					   (array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
								   Enemy_4_Stat_Writer_Manager.current_speed = 0;
			  Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
					}
					else{ Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);}
				}
			}
			else if string_char_at(selected_spell[5],1) == "D"{ //    DEFENCE MODIFIER
				show_debug_message("in DEF");
				var category = int64(string_char_at(selected_spell[5],2));
				var duration = int64(string("{0}{1}", string_char_at(selected_spell[5],4), string_char_at(selected_spell[5],5)));
				// PLAYER 1
				if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 0{ // change these with the new more effective version
					Character_1_Stat_Writer_Manager.def_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_1_Stat_Writer_Manager.def_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_1_Stat_Writer_Manager.def_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
				}
				// PLAYER 2
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 0{
					Character_2_Stat_Writer_Manager.def_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_2_Stat_Writer_Manager.def_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_2_Stat_Writer_Manager.def_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
				}
				//PLAYER 3
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 0{
					Character_3_Stat_Writer_Manager.def_mod_05 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 1{
					Character_3_Stat_Writer_Manager.def_mod_15 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0] and category == 2{
					Character_3_Stat_Writer_Manager.def_mod_20 += duration;
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
				}
				// ENEMY 1
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_1_Stat_Writer_Manager.def_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_1_Stat_Writer_Manager.def_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_1_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_1_Stat_Writer_Manager.def_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
				}
				// ENEMY 2
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_2_Stat_Writer_Manager.def_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_2_Stat_Writer_Manager.def_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_2_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_2_Stat_Writer_Manager.def_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
				}
				// ENEMY 3
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_3_Stat_Writer_Manager.def_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_3_Stat_Writer_Manager.def_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_3_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_3_Stat_Writer_Manager.def_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
				}
				// ENEMY 4
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 0{
					Enemy_4_Stat_Writer_Manager.def_mod_05 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 1{
					Enemy_4_Stat_Writer_Manager.def_mod_15 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
				}
				else if targetted_creature[0] == Enemy_4_Stat_Writer_Manager.stat_block[0] and category == 2{
					Enemy_4_Stat_Writer_Manager.dmg_mod_20 += duration;	
					Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
				}
			}
			else if is_array(selected_spell[5]) == true{ //           PERM BUFF
				var spell = selected_spell[5];
				draw_buff_screen = true;
				if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0]{
					if spell[0] == "A"{ //attack
						Character_1_Stat_Writer_Manager.stat_block[5] += spell[2];
						Character_1_Stat_Writer_Manager.stat_block[6] += spell[2];
						Character_1_Stat_Writer_Manager.stat_block[7] += spell[2];
					}
					else if spell[0] == "D"{ //defence
						Character_1_Stat_Writer_Manager.stat_block[8] += spell[2];
					}
					else if spell[0] == "S" and Character_1_Stat_Writer_Manager.stat_block[4] >= global.speed_cap{ //speed
						Character_1_Stat_Writer_Manager.stat_block[4] -= spell[2];
						if Character_1_Stat_Writer_Manager.stat_block[4] <= global.speed_cap{
							Text_Chat_Manager.printed_string += string("\n{0}'s cannot go any faster",Character_1_Stat_Writer_Manager.stat_block[1]);	
						}
					}
				}
				//else if (targetted_creature[0] == Character_2_Stat_Writer_Manager[0]) {
				else if (targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0]) {
					if spell[0] == "A"{ //attack
						Character_2_Stat_Writer_Manager.stat_block[5] += spell[2];
						Character_2_Stat_Writer_Manager.stat_block[6] += spell[2];
						Character_2_Stat_Writer_Manager.stat_block[7] += spell[2];
					}
					else if spell[0] == "D"{ //defence
						Character_2_Stat_Writer_Manager.stat_block[8] += spell[2];
					}
					else if spell[0] == "S" and Character_2_Stat_Writer_Manager.stat_block[4] >= global.speed_cap{ //speed
						Character_2_Stat_Writer_Manager.stat_block[4] -= spell[2];
						if Character_2_Stat_Writer_Manager.stat_block[4] <= global.speed_cap{
							Text_Chat_Manager.printed_string += string("\n{0}'s cannot go any faster",Character_2_Stat_Writer_Manager.stat_block[1]);	
						}
					}
				}
				else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0]{
					if spell[0] == "A"{ //attack
						Character_3_Stat_Writer_Manager.stat_block[5] += spell[2];
						Character_3_Stat_Writer_Manager.stat_block[6] += spell[2];
						Character_3_Stat_Writer_Manager.stat_block[7] += spell[2];
					}
					else if spell[0] == "D"{ //defence
						Character_3_Stat_Writer_Manager.stat_block[8] += spell[2];
					}
					else if spell[0] == "S" and Character_3_Stat_Writer_Manager.stat_block[4] >= global.speed_cap{ //speed
						Character_3_Stat_Writer_Manager.stat_block[4] -= spell[2];
						if Character_3_Stat_Writer_Manager.stat_block[4] <= global.speed_cap{
							Text_Chat_Manager.printed_string += string("\n{0}'s cannot go any faster",Character_3_Stat_Writer_Manager.stat_block[1]);	
						}
					}
				}
			}
			else if string_char_at(selected_spell[5],1) == "I"{ //    Instant Kill
				var string_splitter = int64(string("{0}{1}",string_char_at(selected_spell[5],2),string_char_at(selected_spell[5],3)));
				//1 + 200 * (Enemy % - 20) / (300 - 20) + 20 * (Player % / 300)
				var PLAYER_PERCENT = current_hp/stat_block[2];
				var ENEMY_PERCENT = Enemy_1_Stat_Writer_Manager.current_hp/Enemy_1_Stat_Writer_Manager.stat_block[2];
				var RANDINT = irandom(100);
				var DEATH_PERCENT = ((PLAYER_PERCENT * 0.4 - 1) * (ENEMY_PERCENT * 0.6 - 1) / 2) * 100 - 11;
				DEATH_PERCENT += string_splitter;
				
				var TARGET_NAME = "";
				if hover == 1{ 
					TARGET_NAME = Character_1_Stat_Writer_Manager.stat_block[1];
				}
				else if hover == 2{ 
					TARGET_NAME = Character_2_Stat_Writer_Manager.stat_block[1];
				}
				else if hover == 3{ try{
					TARGET_NAME = Character_3_Stat_Writer_Manager.stat_block[1];} catch (_exception){}
				}
				else if hover == 4{ 
					TARGET_NAME = Enemy_1_Stat_Writer_Manager.stat_block[1];
				}
				else if hover == 5{ 
					TARGET_NAME = Enemy_2_Stat_Writer_Manager.stat_block[1];
				}
				else if hover == 6{ 
					TARGET_NAME = Enemy_3_Stat_Writer_Manager.stat_block[1];
				}
				else if hover == 7{ 
					TARGET_NAME = Enemy_4_Stat_Writer_Manager.stat_block[1];
				}
				
				if RANDINT <= DEATH_PERCENT{
					Text_Chat_Manager.printed_string += string("\n{0} Instantly Killed {1}!",stat_block[1], TARGET_NAME);
				}
				else{
						Text_Chat_Manager.printed_string += string("\nThe Instant Kill Failed, {0} {1}",DEATH_PERCENT, RANDINT);
				}
			}
			else if array_last(selected_spell) == "RECOIL"{
				if current_def > dmg{}
				else{
				current_hp -= floor((dmg - current_def)/4);
				if current_hp <= 0{ 
					current_hp = 1; 
					Text_Chat_Manager.printed_string += string("\n{0} Survived the Recoil with 1HP",stat_block[1]);
				}
				
				else {
					Text_Chat_Manager.printed_string += string("\n{0} Took {1} Damage from the Recoil!",stat_block[1], floor((dmg - current_def)/4));
				}
			}}
			//execute required part
			current_def = stat_block[8] * def_modifiers;
			
			show_debug_message(dmg);
			
			if targetted_creature == 1{
				dmg -= Character_1_Stat_Writer_Manager.current_def;//8
				if dmg < 0{ dmg = 0;}
			}
			else if targetted_creature == 2{
				dmg -= Character_2_Stat_Writer_Manager.current_def;//8
				if dmg < 0{ dmg = 0;}
			}
			else if targetted_creature == 3{
				dmg -= Character_3_Stat_Writer_Manager.current_def;//8
				if dmg < 0{ dmg = 0;}
			}
			
			else if targetted_creature == 4{
				dmg -= Enemy_1_Stat_Writer_Manager.current_def;//6
				if dmg < 0{ dmg = 0;}
			}
			else if targetted_creature == 5{
				dmg -= Enemy_2_Stat_Writer_Manager.current_def;//6
				if dmg < 0{ dmg = 0;}
			}
			else if targetted_creature == 6{
				dmg -= Enemy_3_Stat_Writer_Manager.current_def;//6
				if dmg < 0{ dmg = 0;}
			}
			else if targetted_creature == 7{
				dmg -= Enemy_4_Stat_Writer_Manager.current_def;//6
				if dmg < 0{ dmg = 0;}
			}
			
			dmg = round(dmg * random_range(0.75, 1.25));
			
			dmg *= dmg_modifiers;
			
			var tc0 = targetted_creature[0];
			
			if hover == 1{
				Character_1_Stat_Writer_Manager.current_hp -= dmg;//8
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Character_1_Stat_Writer_Manager.stat_block[1]);
			}
			else if hover == 2{
				Character_2_Stat_Writer_Manager.current_hp -= dmg;
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Character_2_Stat_Writer_Manager.stat_block[1]);
			}
			else if hover == 3{
				Character_3_Stat_Writer_Manager.current_hp -= dmg;
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Character_3_Stat_Writer_Manager.stat_block[1]);
			}
			
			else if hover == 4{
				Enemy_1_Stat_Writer_Manager.current_hp -= dmg;//6
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Enemy_1_Stat_Writer_Manager.stat_block[1]);
			}
			else if hover == 5{
				Enemy_2_Stat_Writer_Manager.current_hp -= dmg;
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Enemy_2_Stat_Writer_Manager.stat_block[1]);
			}
			else if hover == 6{
				Enemy_3_Stat_Writer_Manager.current_hp -= dmg;
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Enemy_3_Stat_Writer_Manager.stat_block[1]);
			}
			else if hover == 7{
				Enemy_4_Stat_Writer_Manager.current_hp -= dmg;
				Text_Chat_Manager.printed_string += string("\n{0} Dealt {1} Damage to {2}!",stat_block[1], dmg, Enemy_4_Stat_Writer_Manager.stat_block[1]);
			}
			if string_char_at(selected_spell[5],1) == "L"{ // LEECH
				current_hp += ceil(dmg/2);
				Text_Chat_Manager.printed_string += string("\n{0} Gained {1} HP!",stat_block[1], ceil(dmg/2));
				if current_hp > stat_block[2]{
				current_hp = stat_block[2];}
			}
		
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
			player_3_engaged = false;
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
		}
		else if keyboard_check_pressed(ord("2")){
			Character_2_Stat_Writer_Manager.assisted += assisted_boost;
			_con = true;
		}
		else if keyboard_check_pressed(ord("3")){
			Character_3_Stat_Writer_Manager.assisted += assisted_boost;
			_con = true;
		}
		if _con{
			global.all_state_pause = 0;
			assist_confirmed = false;
			draw_assist_screen = false;
			turn_counter ++;	
			Black_Overlay.covered = true;
			player_3_engaged = false;
			current_hp -= environment_damage(stat_block[2], stat_block[1]);
		}
	}
}