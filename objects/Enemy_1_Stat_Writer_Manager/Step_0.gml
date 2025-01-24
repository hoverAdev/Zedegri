	/// @description Insert description here
	// You can write your code in this editor
if current_hp <= 0{ current_speed = 0; }
	
if global.all_state_pause == 0{
	//show_debug_message(current_speed);
	current_speed += 0.495; 
	if current_speed >= stat_block[7]{
		//                     -----TARGETTING OF PARTY-----
	
		//Figuring out who is at play
		var player_1_valid = true;
		var player_2_valid = false;
		var player_3_valid = false;
	
		var p1hp = Character_1_Stat_Writer_Manager.current_hp;
		try{
		var p2hp = Character_2_Stat_Writer_Manager.current_hp;}
		catch (_exception){
		p2hp = 0;}
		try{
		var p3hp = Character_3_Stat_Writer_Manager.current_hp;}
		catch (_exception){
		p3hp = 0;}
		
		var random_selection_method = irandom_range(1,60);
		var target = 0;
		if random_selection_method >= 51{      // LOW HEALTH TARGET
			show_debug_message("LOW HEALTH TARGET");
			
			//  -------1-------
			if  p1hp > 0
			and p1hp < p2hp
			and  p1hp < p3hp{
				target = 1;
			}
			else if p1hp > 0
			and p2hp <= 0
			and p3hp > p1hp{
				target = 1;
			}
			else if p1hp > 0
			and p3hp <= 0
			and p2hp > p1hp{
				target = 1;
			}
			else if p1hp > 0
			and p2hp <= 0
			and p3hp <= 0{
				target = 1;
			}
			
			// ------2------
			if  p2hp > 0
			and p2hp < p1hp
			and  p2hp < p3hp{
				target = 2;
			}
			else if p2hp > 0
			and p1hp <= 0
			and p3hp > p2hp{
				target = 2;
			}
			else if p2hp > 0
			and p3hp <= 0
			and p1hp > p2hp{
				target = 2;
			}
			else if p2hp > 0
			and p1hp <= 0
			and p3hp <= 0{
				target = 2;
			}
			
			// -------3-------
			if  p3hp > 0
			and p3hp < p2hp
			and  p3hp < p1hp{
				target = 3;
			}
			else if p3hp > 0
			and p2hp <= 0
			and p1hp > p3hp{
				target = 3;
			}
			else if p3hp > 0
			and p1hp <= 0
			and p2hp > p3hp{
				target = 3;
			}
			else if p3hp > 0
			and p2hp <= 0
			and p1hp <= 0{
				target = 3;
			}
			
			
		}
		else if random_selection_method >= 20{ //RANDOM
			target = Enemy_Random(p1hp, p2hp, p3hp);
		}
		else { //------------------------------- HEALTHIEST
			show_debug_message("HEALTHIEST");
			if p1hp > p3hp and p1hp > p2hp and				p1hp > 0 and p3hp > 0 and p2hp > 0{target = 1;}
			else if p2hp > p3hp and p2hp > p1hp and			p1hp > 0 and p3hp > 0 and p2hp > 0{target = 2;}
			else if p3hp > p2hp and p3hp > p1hp and			p1hp > 0 and p3hp > 0 and p2hp > 0{target = 3;}
				
			//ONLY P3 DEAD OR NOT AVAILABLE
			else if p1hp > p2hp and p3hp < 0   and p2hp > 0 or p1hp > p2hp and player_3_valid == false and p2hp > 0 {target = 1;}
			else if p2hp > p1hp and p3hp < 0   and p1hp > 0 or p2hp > p1hp and player_3_valid == false and p1hp > 0 {target = 2;}
				
			//ONLY P2 DEAD
			else if p1hp > p3hp and p2hp < 0 and p3hp > 0 {target = 1;}
			else if p3hp > p1hp and p2hp < 0 and p1hp > 0 {target = 3;}
				
			//ONLY P1 DEAD
			else if p2hp > p3hp and p1hp < 0 and p3hp > 0 {target = 2;}
			else if p3hp > p2hp and p1hp < 0 and p2hp > 0 {target = 3;}
				
			//P1 AND P2 DEAD
			else if p1hp < 0 and p2hp < 0 {target = 3;}
				
			//P1 AND P3 DEAD
			else if p1hp < 0 and p3hp < 0 {target = 2;}
				
			//P2 AND P3 DEAD OR NOT AVAILABLE
			else {target = 1;}
		}
		
		//                     -----SELECTION OF ATTACK-----
		var attack_out_of_100 = irandom_range(1,100);
		if attack_out_of_100 > atk_3[0]     {action_fierce = true;}
		else if attack_out_of_100 > atk_2[0]{action_heavy = true;}
		else                                {action_light = true;}
		//                     -----DAMAGE CALCULATIONS-----
		var assist_mod = 0;
		if target == 1{
			assist_mod = Character_1_Stat_Writer_Manager.assisted;
		}
		else if target == 2{
			assist_mod = Character_2_Stat_Writer_Manager.assisted;
		}
		else if target == 3{
			assist_mod = Character_3_Stat_Writer_Manager.assisted;
		}
		var atk_used = [];
		if action_light == true{
			atk_used = atk_1;
			show_debug_message("light attack");
		}
		else if action_heavy == true{
			show_debug_message("med attack");
			atk_used = atk_2;
		}
		else if action_fierce == true{
			atk_used = atk_3;
		}
		show_debug_message(assist_mod);
		
		var does_hit = atk_used[2] - assist_mod;
		show_debug_message("does hit: ", does_hit);
		if does_hit >= random_range(1,100){
			show_debug_message("entered damage process");
			dmg = atk_used[1] + turn_counter *1.1;
			dmg = round(dmg * random_range(0.7, 1.2)); 
			
			var crit_roll = irandom_range(1, 25);
			var double_crit_roll = irandom_range(1, 50);
			var dodge_roll = irandom_range(1,100);
			
			if crit_roll == 20{
				dmg *= 1.8;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 1.6;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > atk_used[2] - floor(assist_mod){
					dmg = 0;
					show_debug_message("MISS!");
				}
			}
			
			if atk_used[3] == 1{ //Normal Heal
				show_debug_message("ENEMY HEAL");
				var heal_amount = stat_block[2] * (atk_used[4]/100);
				
				var e1ch = infinity;
				var e2ch = infinity;
				var e3ch = infinity;
				var e4ch = infinity;
				
				if Enemy_1_Stat_Writer_Manager.current_hp > 0{
					e1ch = Enemy_1_Stat_Writer_Manager.current_hp;
				}
				if Enemy_2_Stat_Writer_Manager.current_hp > 0{
					e2ch = Enemy_2_Stat_Writer_Manager.current_hp;
				}
				if Enemy_3_Stat_Writer_Manager.current_hp > 0{
					e3ch = Enemy_3_Stat_Writer_Manager.current_hp;
				}
				if Enemy_4_Stat_Writer_Manager.current_hp > 0{
					e4ch = Enemy_4_Stat_Writer_Manager.current_hp;
				}
				
				if crit_roll == 20{ heal_amount *= 1.5;}
				heal_amount = floor(heal_amount);
				smallest = min(e1ch, e2ch, e3ch, e4ch);
				if smallest = Enemy_1_Stat_Writer_Manager.current_hp{
					Enemy_1_Stat_Writer_Manager.current_hp += heal_amount;
					if Enemy_1_Stat_Writer_Manager.current_hp > Enemy_1_Stat_Writer_Manager.stat_block[2]{
					   Enemy_1_Stat_Writer_Manager.current_hp = Enemy_1_Stat_Writer_Manager.stat_block[2]
					   print_enemy_string(string("{0} healed {1} back to full!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]));
					}
					else{print_enemy_string(string("{0} healed {1} back {2} HP!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1],heal_amount));}
				}
				else if smallest = Enemy_2_Stat_Writer_Manager.current_hp{
					   Enemy_2_Stat_Writer_Manager.current_hp += heal_amount;
					if Enemy_2_Stat_Writer_Manager.current_hp > Enemy_2_Stat_Writer_Manager.stat_block[2]{
					   Enemy_2_Stat_Writer_Manager.current_hp = Enemy_2_Stat_Writer_Manager.stat_block[2]
						print_enemy_string(string("{0} healed {1} back to full!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]));
					}
					else{print_enemy_string(string("{0} healed {1} back {2} HP!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1],heal_amount));}
				}
				else if smallest = Enemy_3_Stat_Writer_Manager.current_hp{
					   Enemy_3_Stat_Writer_Manager.current_hp += heal_amount;
					if Enemy_3_Stat_Writer_Manager.current_hp > Enemy_3_Stat_Writer_Manager.stat_block[2]{
					   Enemy_3_Stat_Writer_Manager.current_hp = Enemy_3_Stat_Writer_Manager.stat_block[2]
						print_enemy_string(string("{0} healed {1} back to full!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]));
					}
					else{print_enemy_string(string("{0} healed {1} back {2} HP!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1],heal_amount));}
				}
				else if smallest = Enemy_4_Stat_Writer_Manager.current_hp{
					   Enemy_4_Stat_Writer_Manager.current_hp += heal_amount;
					if Enemy_4_Stat_Writer_Manager.current_hp > Enemy_4_Stat_Writer_Manager.stat_block[2]{
					   Enemy_4_Stat_Writer_Manager.current_hp = Enemy_4_Stat_Writer_Manager.stat_block[2]
						print_enemy_string(string("{0} healed {1} back to full!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]));
					}
					else{print_enemy_string(string("{0} healed {1} back {2} HP!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1],heal_amount));}
				}
			}
			else if atk_used[3] == 2{ //Field Heal
				show_debug_message("ENEMY FIELD HEAL");
				var heal_amount_1 = Enemy_1_Stat_Writer_Manager.stat_block[2] * (atk_used[4]/100);
				var heal_amount_2 = Enemy_2_Stat_Writer_Manager.stat_block[2] * (atk_used[4]/100);
				var heal_amount_3 = Enemy_3_Stat_Writer_Manager.stat_block[2] * (atk_used[4]/100);
				var heal_amount_4 = Enemy_4_Stat_Writer_Manager.stat_block[2] * (atk_used[4]/100);
				if crit_roll == 20{ heal_amount_1 *= 1.5; heal_amount_2 *= 1.5; heal_amount_3 *= 1.5; heal_amount_4 *= 1.5;}
				//heal all enemies
				Enemy_1_Stat_Writer_Manager.current_hp += floor(heal_amount_1); if Enemy_1_Stat_Writer_Manager.current_hp > Enemy_1_Stat_Writer_Manager.stat_block[2]{Enemy_1_Stat_Writer_Manager.current_hp = Enemy_1_Stat_Writer_Manager.stat_block[2];}
				Enemy_2_Stat_Writer_Manager.current_hp += floor(heal_amount_2); if Enemy_2_Stat_Writer_Manager.current_hp > Enemy_2_Stat_Writer_Manager.stat_block[2]{Enemy_2_Stat_Writer_Manager.current_hp = Enemy_2_Stat_Writer_Manager.stat_block[2];}
				Enemy_3_Stat_Writer_Manager.current_hp += floor(heal_amount_3); if Enemy_3_Stat_Writer_Manager.current_hp > Enemy_3_Stat_Writer_Manager.stat_block[2]{Enemy_3_Stat_Writer_Manager.current_hp = Enemy_3_Stat_Writer_Manager.stat_block[2];}
				Enemy_4_Stat_Writer_Manager.current_hp += floor(heal_amount_4); if Enemy_4_Stat_Writer_Manager.current_hp > Enemy_4_Stat_Writer_Manager.stat_block[2]{Enemy_4_Stat_Writer_Manager.current_hp = Enemy_4_Stat_Writer_Manager.stat_block[2];}
				print_enemy_string(string("{0} healed all of their teammates!", stat_block[1]));
			}
			if atk_used[5] == 0{ //Stagger Human
				show_debug_message("ENEMY STAGGER");
				if target == 1 and Character_1_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_1_Stat_Writer_Manager.stat_block) == 0{
						Character_1_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
					}
				}
				else if target == 2 and Character_2_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_2_Stat_Writer_Manager.stat_block) == 0{
						Character_2_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
					}
				}
				else if target == 3 and Character_3_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_3_Stat_Writer_Manager.stat_block) == 0{
						Character_3_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
					}
				}
			}
			else if atk_used[5] == 1{ //Stagger Zedegri
				if target == 1 and Character_1_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_1_Stat_Writer_Manager.stat_block) == 1{
						Character_1_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
					}
				}
				else if target == 2 and Character_2_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_2_Stat_Writer_Manager.stat_block) == 1{
						Character_2_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
					}
				}
				else if target == 3 and Character_3_Stat_Writer_Manager.current_speed != infinity{
					if array_last(Character_3_Stat_Writer_Manager.stat_block) == 1{
						Character_3_Stat_Writer_Manager.current_speed = 0;
						print_enemy_string(string("{0} staggered {1}!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
					}
				}
			}
			else if atk_used[5] > 1{
				Stagger_Enemy_Addendum(atk_used[5], target);	
			}
			if atk_used[7][0] == 0{ //ATK Debuff
				if atk_used[7][1] == 0{}
				else if target == 1{
					show_debug_message("ENEMY DEBUFF 1");
					Character_1_Stat_Writer_Manager.dmg_mod_05 += atk_used[7][1];	
					print_enemy_string(string("{0} has their damage reduced!",Character_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if target == 2{
					show_debug_message("ENEMY DEBUFF 2");
					Character_2_Stat_Writer_Manager.dmg_mod_05 += atk_used[7][1];	
					print_enemy_string(string("{0} has their damage reduced!",Character_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if target == 3{
					show_debug_message("ENEMY DEBUFF 3");
					Character_3_Stat_Writer_Manager.dmg_mod_05 += atk_used[7][1];	
					print_enemy_string(string("{0} has their damage reduced!",Character_3_Stat_Writer_Manager.stat_block[1]));
				}
			}
			else if atk_used[7][0] == 1{ //ATK buff 1.5
				show_debug_message("ENEMY BUFF 1.5");
				var successful_enemy_selection = false;
				var randomly_selected_enemy = 0;
				while successful_enemy_selection == false{
					var rse = irandom_range(1,4);
					if rse == 1 and Enemy_1_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 1;
					}
					else if rse == 2 and Enemy_2_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 2;
					}
					else if rse == 3 and Enemy_3_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 3;
					}
					else if rse == 4 and Enemy_4_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 4;
					}
				}
				if randomly_selected_enemy == 1{
					Enemy_1_Stat_Writer_Manager.dmg_mod_15 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 1.5x!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 2{
					Enemy_2_Stat_Writer_Manager.dmg_mod_15 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 1.5x!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 3{
					Enemy_3_Stat_Writer_Manager.dmg_mod_15 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 1.5x!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 4{
					Enemy_4_Stat_Writer_Manager.dmg_mod_15 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 1.5x!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
				}
			}
			else if atk_used[7][0] == 2{ //ATK buff 2
				show_debug_message("ENEMY BUFF 2");
				var successful_enemy_selection = false;
				var randomly_selected_enemy = 0;
				while successful_enemy_selection == false{
					var rse = irandom_range(1,4);
					if rse == 1 and Enemy_1_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 1;
					}
					else if rse == 2 and Enemy_2_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 2;
					}
					else if rse == 3 and Enemy_3_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 3;
					}
					else if rse == 4 and Enemy_4_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 4;
					}
				}
				if randomly_selected_enemy == 1{
					Enemy_1_Stat_Writer_Manager.dmg_mod_20 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 2x!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 2{
					Enemy_2_Stat_Writer_Manager.dmg_mod_20 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 2x!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 3{
					Enemy_3_Stat_Writer_Manager.dmg_mod_20 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 2x!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 4{
					Enemy_4_Stat_Writer_Manager.dmg_mod_20 += atk_used[7][1];
					print_enemy_string(string("{0} has their damage increased by 2x!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
				}
			}
			if atk_used[8][0] == 0{ //DEF Debuff
				if atk_used[8][1] == 0{}
				else if target == 1{
					show_debug_message("ENEMY DEFENCE DOWN 1");
					Character_1_Stat_Writer_Manager.def_mod_05 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence reduced!",Character_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if target == 2{
					show_debug_message("ENEMY DEFENCE DOWN 2");
					Character_2_Stat_Writer_Manager.def_mod_05 += atk_used[8][1];	
					print_enemy_string(string("{0} has their defence reduced!",Character_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if target == 3{
					show_debug_message("ENEMY DEFENCE DOWN 3");
					Character_3_Stat_Writer_Manager.def_mod_05 += atk_used[8][1];	
					print_enemy_string(string("{0} has their defence reduced!",Character_3_Stat_Writer_Manager.stat_block[1]));
				}
			}
			else if atk_used[8][0] == 1{ //DEF buff 1.5
				show_debug_message("ENEMY DEFENCE UP 1.5");
				var successful_enemy_selection = false;
				var randomly_selected_enemy = 0;
				while successful_enemy_selection == false{
					var rse = irandom_range(1,4);
					if rse == 1 and Enemy_1_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 1;
					}
					else if rse == 2 and Enemy_2_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 2;
					}
					else if rse == 3 and Enemy_3_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 3;
					}
					else if rse == 4 and Enemy_4_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 4;
					}
				}
				if randomly_selected_enemy == 1{
					Enemy_1_Stat_Writer_Manager.def_mod_15 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 1.5x!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 2{
					Enemy_2_Stat_Writer_Manager.def_mod_15 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 1.5x!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 3{
					Enemy_3_Stat_Writer_Manager.def_mod_15 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 1.5x!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 4{
					Enemy_4_Stat_Writer_Manager.def_mod_15 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 1.5x!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
				}
			}
			else if atk_used[8][0] == 2{ //DEF buff 2
				show_debug_message("ENEMY DEFENCE UP 2");
				var successful_enemy_selection = false;
				var randomly_selected_enemy = 0;
				while successful_enemy_selection == false{
					var rse = irandom_range(1,4);
					if rse == 1 and Enemy_1_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 1;
					}
					else if rse == 2 and Enemy_2_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 2;
					}
					else if rse == 3 and Enemy_3_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 3;
					}
					else if rse == 4 and Enemy_4_Stat_Writer_Manager.current_hp > 0{
						successful_enemy_selection = true;
						randomly_selected_enemy = 4;
					}
				}
				if randomly_selected_enemy == 1{
					Enemy_1_Stat_Writer_Manager.def_mod_20 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 2x!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 2{
					Enemy_2_Stat_Writer_Manager.def_mod_20 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 2x!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 3{
					Enemy_3_Stat_Writer_Manager.def_mod_20 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 2x!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
				}
				else if randomly_selected_enemy == 4{
					Enemy_4_Stat_Writer_Manager.def_mod_20 += atk_used[8][1];
					print_enemy_string(string("{0} has their defence increased by 2x!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
				}
			}
		
		
			if target == 1{
				dmg -= Character_1_Stat_Writer_Manager.current_def;//8
				if Character_1_Stat_Writer_Manager.is_defending == true{
					dmg *= 0.5;
				}
				if dmg < 0{ dmg = 0;}
			}
			else if target == 2{
				dmg -= Character_2_Stat_Writer_Manager.current_def;//8
				if Character_2_Stat_Writer_Manager.is_defending == true{
					dmg *= 0.5;
				}
				if dmg < 0{ dmg = 0;}
			}
			else if target == 3{
				dmg -= Character_3_Stat_Writer_Manager.current_def;//8
				if Character_3_Stat_Writer_Manager.is_defending == true{
					dmg *= 0.5;
				}
				if dmg < 0{ dmg = 0;}
			}
		
			if dmg_mod_05 > 0{
				dmg *= 0.5;
				dmg_mod_05 --;
			}
			if dmg_mod_15 > 0{
				dmg *= 1.45;
				dmg_mod_15 --;
			}
			if dmg_mod_20 > 0{
				dmg *= 2.128;
				dmg_mod_20 --;
			}
			if atk_used[6] == true{ //Leech
				show_debug_message("ENEMY LEECH");
				current_hp += floor(dmg/2);	
				if current_hp > stat_block[2]{ current_hp = stat_block[2]; print_enemy_string(string("{0} healed back to full!",stat_block[1]));}
				else{print_enemy_string(string("{0} healed back {1} HP!",stat_block[1],floor(dmg/2)));}
			}
	
			//                    -----HITTING THE BLOODY THING-----
			if target == 1{
				Character_1_Stat_Writer_Manager.current_hp -= floor(dmg);
				print_enemy_string(string("{0} hit {1} for {2} damage!",stat_block[1],Character_1_Stat_Writer_Manager.stat_block[1],floor(dmg)));
			}
			else if target == 2{
				Character_2_Stat_Writer_Manager.current_hp -= floor(dmg);
				print_enemy_string(string("{0} hit {1} for {2} damage!",stat_block[1],Character_2_Stat_Writer_Manager.stat_block[1],floor(dmg)));
			}
			else if target == 3{
				Character_3_Stat_Writer_Manager.current_hp -= floor(dmg);
				print_enemy_string(string("{0} hit {1} for {2} damage!",stat_block[1],Character_3_Stat_Writer_Manager.stat_block[1],floor(dmg)));
			}
		}
		target = 0;
		current_speed = 0;
		turn_counter ++;
		e1t = false;
		action_fierce = false;
		action_heavy = false;
		action_light = false;
		
		if dmg_mod_05 >= 1{	dmg_mod_05 --;	}
		if dmg_mod_15 >= 1{	dmg_mod_15 --;	}
		if dmg_mod_20 >= 1{	dmg_mod_20 --;	}
		if def_mod_05 >= 1{	def_mod_05 --;	}
		if def_mod_15 >= 1{	def_mod_15 --;	}
		if def_mod_20 >= 1{	def_mod_20 --;	}
	}
}