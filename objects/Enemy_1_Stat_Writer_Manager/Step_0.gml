	/// @description Insert description here
	// You can write your code in this editor
if global.all_state_pause == 0{
	//show_debug_message(current_speed);
	current_speed += 0.7125; 
	if current_speed >= stat_block[7]{
		//                     -----SELECTION OF ATTACK-----
		var attack_out_of_100 = irandom_range(1,100);
		if attack_out_of_100 > 80     {action_fierce = true;}
		else if attack_out_of_100 > 45{action_heavy = true;}
		else                          {action_light = true;}
		//                     -----DAMAGE CALCULATIONS-----
	
		if action_light == true{
			//show_debug_message(stat_block[7]);
			//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
			dmg = stat_block[3] + turn_counter * 1.1;
			var crit_roll = irandom_range(1, 25);
			var double_crit_roll = irandom_range(1, 50);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.7, 1.2));
			if crit_roll == 20{
				dmg *= 1.8;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 1.6;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > stat_block[8]{
					dmg = 0;
					show_debug_message("MISS!");
				}
			}
			action_light = false;
		}
		else if action_heavy == true{
			//show_debug_message(stat_block[7]);
			//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
			dmg = stat_block[4] + turn_counter * 1.1;
			var crit_roll = irandom_range(1, 25);
			var double_crit_roll = irandom_range(1, 50);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.7, 1.2));
			if crit_roll == 20{
				dmg *= 1.8;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 1.6;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > stat_block[9]{
					dmg = 0;
					show_debug_message("MISS!");
				}
			}
			action_heavy = false;
		}
		else if action_fierce == true{
			//show_debug_message(stat_block[7]);
			//Code, Name, HP, LT, HV, FI, DEF, SP, LH%, HH%, FH%, Is Zedegri
			dmg = stat_block[5] + turn_counter * 1.1;
			var crit_roll = irandom_range(1, 25);
			var double_crit_roll = irandom_range(1, 50);
			var dodge_roll = irandom_range(1,100);
			dmg = round(dmg * random_range(0.7, 1.2));
			if crit_roll == 20{
				dmg *= 1.8;
				show_debug_message("CRIT!");
				if double_crit_roll == 20{dmg *= 1.6;show_debug_message("DOUBLE CRIT!");}
			}else{
				if dodge_roll > stat_block[10]{
					dmg = 0;
					show_debug_message("MISS!");
				}
			}
			action_fierce = false;
		}
		//                     -----TARGETTING OF PARTY-----
	
		//Figuring out who is at play
		var player_1_valid = true;
		var player_2_valid = false;
		var player_3_valid = false;
	
		var p1hp = Character_1_Stat_Writer_Manager.current_hp;
		var p2hp = -1;
		var p3hp = -1;
	
		try{
			var test_player_2_present = Character_2_Stat_Writer_Manager.stat_block[1];
			var p2hp = Character_2_Stat_Writer_Manager.current_hp;
		}catch (_exception){
			player_2_valid = false;
		}try{
			var test_player_3_present = Character_3_Stat_Writer_Manager.stat_block[1];
			var p3hp = Character_3_Stat_Writer_Manager.current_hp;
		}catch (_exception){
			player_3_valid = false;
		}
		var random_selection_method = irandom_range(1,50);
		var target = 0;
		if random_selection_method >= 45{      // LOW HEALTH TARGET
			//ALL ALIVE
			if p1hp < p3hp and p1hp < p2hp and				p1hp > 0 and p3hp > 0 and p2hp > 0{target = 1;}
			else if p2hp < p3hp and p2hp < p1hp and			p1hp > 0 and p3hp > 0 and p2hp > 0{target = 2;}
			else if p3hp < p2hp and p3hp < p1hp and			p1hp > 0 and p3hp > 0 and p2hp > 0{target = 3;}
				
			//ONLY P3 DEAD OR NOT AVAILABLE
			else if p1hp < p2hp and p3hp < 0   and p2hp > 0 or p1hp < p2hp and player_3_valid == false and p2hp > 0 {target = 1;}
			else if p2hp < p1hp and p3hp < 0   and p1hp > 0 or p2hp < p1hp and player_3_valid == false and p1hp > 0 {target = 2;}
				
			//ONLY P2 DEAD
			else if p1hp < p3hp and p2hp < 0 and p3hp > 0 {target = 1;}
			else if p3hp < p1hp and p2hp < 0 and p1hp > 0 {target = 3;}
				
			//ONLY P1 DEAD
			else if p2hp < p3hp and p1hp < 0 and p3hp > 0 {target = 2;}
			else if p3hp < p2hp and p1hp < 0 and p2hp > 0 {target = 3;}
				
			//P1 AND P2 DEAD
			else if p1hp < 0 and p2hp < 0 {target = 3;}
				
			//P1 AND P3 DEAD
			else if p1hp < 0 and p3hp < 0 {target = 2;}
				
			//P2 AND P3 DEAD OR NOT AVAILABLE
			else {target = 1;}
		}
		else if random_selection_method >= 20{ //RANDOM
			var selected = false;
			var valid_target = 0;
			while selected == false{
				var random_target = irandom_range(1,3);
				if random_target == 1 and p1hp > 0 {
					target = 1;
					selected = true;
				}
				else if random_target == 2 and p2hp > 0 {
					target = 2;
					selected = true;
				}
				else if random_target == 3 and p3hp > 0 {
					target = 3;
					selected = true;
				}
			}
	
		}
		else { //------------------------------- HEALTHIEST
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
	
		//                    -----HITTING THE BLOODY THING-----
		if target == 1{
			Character_1_Stat_Writer_Manager.current_hp -= dmg;
		}
		else if target == 2{
			Character_2_Stat_Writer_Manager.current_hp -= dmg;
		}
		else if target == 3{
			Character_3_Stat_Writer_Manager.current_hp -= dmg;
		}
	
	
		current_speed = 0;
		turn_counter ++;	
	}
}