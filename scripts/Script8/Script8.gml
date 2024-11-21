// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stagger_Enemy_Addendum(input, target){ //for enemies
	var dhundred = irandom_range(1,100);
	if input == 3{ //every human
		if Character_1_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 0{
		   Character_1_Stat_Writer_Manager.current_speed = 0;
		}
		if Character_2_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 0{
		   Character_2_Stat_Writer_Manager.current_speed = 0;
		}
		if Character_3_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 0{
		   Character_3_Stat_Writer_Manager.current_speed = 0;
		}
		print_enemy_string(string("{0} staggered every human!",stat_block[1]));
	}
	else if input == 4{// every zedegri
		if Character_1_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 1{
		   Character_1_Stat_Writer_Manager.current_speed = 0;
		}
		if Character_2_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 1{
		   Character_2_Stat_Writer_Manager.current_speed = 0;
		}
		if Character_3_Stat_Writer_Manager.current_hp >= 1 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 1{
		   Character_3_Stat_Writer_Manager.current_speed = 0;
		}
		print_enemy_string(string("{0} staggered every Zedegri!",stat_block[1]));
	}
	
	else if input == 5{// human 25%
		if dhundred <= 25{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 0 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 0 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 0 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
	else if input == 6{// zedegri 25%
		if dhundred <= 25{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 1 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 1 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 1 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
	else if input == 7{// human 50%
		if dhundred <= 50{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 0 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 0 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 0 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
	else if input == 8{// zedegri 50%
		if dhundred <= 50{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 1 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 1 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 1 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
	else if input == 9{// human 75%
		if dhundred <= 75{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 0 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 0 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 0 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
	else if input == 10{//zedegri 75%
		if dhundred <= 75{
			if target == 1 and array_last(Character_1_Stat_Writer_Manager.stat_block) == 1 and Character_1_Stat_Writer_Manager.current_hp >= 1{
				Character_1_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 2 and array_last(Character_2_Stat_Writer_Manager.stat_block) == 1 and Character_2_Stat_Writer_Manager.current_hp >= 1{
				Character_2_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]));
			}
			else if target == 3 and array_last(Character_3_Stat_Writer_Manager.stat_block) == 1 and Character_3_Stat_Writer_Manager.current_hp >= 1{
				Character_3_Stat_Writer_Manager.current_speed = 0;
				print_enemy_string(string("{0} staggered {1}", stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]));
			}
		}
	}
	
}
function Stagger_Player_Addendum(input, target){ //for players
	//print_enemy_string(string(target)); //Debug code
	//show_debug_message(target);
	target = target - 3;
	var dhundred = irandom_range(1,100);
	var Low_Shot = 52;
	var Med_Shot = 70;
	var High_Shot = 90;
	if input == 4 and dhundred <= Low_Shot{
		//print_enemy_string("in input 4"); //issue still with target
		if target == 1{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 5 and dhundred <= Low_Shot{ //       Human
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 0{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 0{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 0{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 0{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 6 and dhundred <= Low_Shot{//   Zedegri
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 1{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 1{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 1{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 1{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 7 and dhundred <= Med_Shot{//   Human
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 0{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 0{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 0{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 0{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 8 and dhundred <= Med_Shot{//   Zedegri
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 1{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 1{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 1{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 1{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 9 and dhundred <= High_Shot{//  Human
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 0{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 0{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 0{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 0{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else if input == 10 and dhundred <= High_Shot{// Zedegri
		if target == 1 and array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 1{
			Enemy_1_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_1_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 2 and array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 1{
			Enemy_2_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_2_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 3 and array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 1{
			Enemy_3_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_3_Stat_Writer_Manager.stat_block[1]));
		}
		else if target == 4 and array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 1{
			Enemy_4_Stat_Writer_Manager.current_speed = 0;
			print_enemy_string(string("{0} was staggered!",Enemy_4_Stat_Writer_Manager.stat_block[1]));
		}
	}
	else{
		print_enemy_string(string("The spell missed!"));	
	}
}
function Enemy_Random(p1hp, p2hp, p3hp){
	show_debug_message("RANDOM TARGET");
	var target = 0;
	if p1hp > 0 and p2hp > 0 and p3hp > 0{
		var random_target = irandom_range(1,3);
		if random_target == 1 and p1hp > 0 {
			target = 1;
		}
		else if random_target == 2 and p2hp > 0 {
			target = 2;
		}
		else if random_target == 3 and p3hp > 0 {
			target = 3;
		}
	}
	else if p1hp > 0 and p2hp > 0{
		var random_target = irandom_range(1,2);
		if random_target == 1 and p1hp > 0 {
			target = 1;
		}
		else if random_target == 2 and p2hp > 0 {
			target = 2;
		}
	}
	else if p1hp > 0 and p3hp > 0{
		var random_target = irandom_range(1,2);
		if random_target == 1 and p1hp > 0 {
			target = 1;
		}
		else if random_target == 2 and p2hp > 0 {
			target = 3;
		}
	}
	else if p2hp > 0 and p3hp > 0{
		var random_target = irandom_range(1,2);
		if random_target == 1 and p1hp > 0 {
			target = 2;
		}
		else if random_target == 2 and p2hp > 0 {
			target = 3;
		}
	}
	else if p1hp > 0{
		target = 1;	
	}
	else if p2hp > 0{
		target = 2;	
	}
	else if p3hp > 0{
		target = 3;	
	}	
	return target;
}
function Spell_Cast(target_code, selected_spell){
	hp_recover = 0;
	var string_splitter;
	dmg = selected_spell[4];
	//show_debug_message("before stagger");
	//show_debug_message(selected_spell[5]);
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
		//show_debug_message("in HEAL");
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
		else if target_code == 4{
			Enemy_1_Stat_Writer_Manager.current_hp += hp_recover;
			if Enemy_1_Stat_Writer_Manager.current_hp > Enemy_1_Stat_Writer_Manager.stat_block[2]{
				Enemy_1_Stat_Writer_Manager.current_hp = Enemy_1_Stat_Writer_Manager.stat_block[2];
			}
			Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], hp_recover);
		}
		else if target_code == 5{
			Enemy_2_Stat_Writer_Manager.current_hp += hp_recover;
			if Enemy_2_Stat_Writer_Manager.current_hp > Enemy_2_Stat_Writer_Manager.stat_block[2]{
				Enemy_2_Stat_Writer_Manager.current_hp = Enemy_2_Stat_Writer_Manager.stat_block[2];
			}
			Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], hp_recover);
		}
		else if target_code == 6{
			Enemy_3_Stat_Writer_Manager.current_hp += hp_recover;
			if Enemy_3_Stat_Writer_Manager.current_hp > Enemy_3_Stat_Writer_Manager.stat_block[2]{
				Enemy_3_Stat_Writer_Manager.current_hp = Enemy_3_Stat_Writer_Manager.stat_block[2];
			}
			Text_Chat_Manager.printed_string += string("\n{0} Betrayed and healed {1} for {2}",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], hp_recover);
		}
		else if target_code == 7{
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
		else if target_code == 4 and category == 0{
			Enemy_1_Stat_Writer_Manager.dmg_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 4 and category == 1{
			Enemy_1_Stat_Writer_Manager.dmg_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 4 and category == 2{
			Enemy_1_Stat_Writer_Manager.dmg_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1], duration);
		}
		// ENEMY 2
		else if target_code == 5 and category == 0{
			Enemy_2_Stat_Writer_Manager.dmg_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 5 and category == 1{
			Enemy_2_Stat_Writer_Manager.dmg_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 5 and category == 2{
			Enemy_2_Stat_Writer_Manager.dmg_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1], duration);
		}
		// ENEMY 3
		else if target_code == 6 and category == 0{
			Enemy_3_Stat_Writer_Manager.dmg_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 6 and category == 1{
			Enemy_3_Stat_Writer_Manager.dmg_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 6 and category == 2{
			Enemy_3_Stat_Writer_Manager.dmg_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 2.0x ATK for {2}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1], duration);
		}
		// ENEMY 4
		else if target_code == 7 and category == 0{
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 0.5x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
			Enemy_4_Stat_Writer_Manager.dmg_mod_05 += duration;	
		}
		else if target_code == 7 and category == 1{
			Enemy_4_Stat_Writer_Manager.dmg_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Gave {1} 1.5x ATK for {2}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1], duration);
		}
		else if target_code == 7 and category == 2{
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
				
		if target_code == 1{
			if (array_last(Character_1_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Character_1_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
			Character_1_Stat_Writer_Manager.current_speed = 0;
			Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
			}
			else{
				Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
			}
		}
		else if target_code == 2{
			if (array_last(Character_2_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Character_2_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
							Character_2_Stat_Writer_Manager.current_speed = 0;
			Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
			}
			else{
				Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
			}
		}
		else if target_code == 3{
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
		if target_code == 4{
			//show_debug_message(array_last(Enemy_1_Stat_Writer_Manager.stat_block),selected_spell[5]);
			if (array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Enemy_1_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
							Enemy_1_Stat_Writer_Manager.current_speed = 0;
			Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
			}
			else{
				Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
			}
		}
		else if target_code == 5{
			if (array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Enemy_2_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
							Enemy_2_Stat_Writer_Manager.current_speed = 0;
		Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
			}
			else{
				Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
			}
		}
		else if target_code == 6{
			if (array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Enemy_3_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
							Enemy_3_Stat_Writer_Manager.current_speed = 0;
		Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
			}
			else{ Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);}
		}
		else if target_code == 7{
			if (array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 0 and selected_spell[5] == 0) or 
				(array_last(Enemy_4_Stat_Writer_Manager.stat_block) == 1 and selected_spell[5] == 1){
							Enemy_4_Stat_Writer_Manager.current_speed = 0;
		Text_Chat_Manager.printed_string += string("\n{0} Staggered {1}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
			}
			else{ Text_Chat_Manager.printed_string += string("\n{0} Failed to Stagger {1}!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);}
		}
	}
	else if is_numeric(selected_spell[5]) == true{		//	  MORE STAGGER OPTIONS
		Stagger_Player_Addendum(selected_spell[5], target_code);	
	}
	else if string_char_at(selected_spell[5],1) == "D"{ //    DEFENCE MODIFIER
		var category = int64(string_char_at(selected_spell[5],2));
		var duration = int64(string("{0}{1}", string_char_at(selected_spell[5],4), string_char_at(selected_spell[5],5)));
		show_debug_message(category);
		show_debug_message(duration);
		// PLAYER 1
		if target_code == 1 and category == 0{ // change these with the new more effective version
			Character_1_Stat_Writer_Manager.def_mod_05 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 1 and category == 1{
			Character_1_Stat_Writer_Manager.def_mod_15 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 1 == Character_1_Stat_Writer_Manager.stat_block[0] and category == 2{
			Character_1_Stat_Writer_Manager.def_mod_20 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_1_Stat_Writer_Manager.stat_block[1]);
		}
		// PLAYER 2
		else if target_code == 2 == Character_2_Stat_Writer_Manager.stat_block[0] and category == 0{
			Character_2_Stat_Writer_Manager.def_mod_05 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 2 == Character_2_Stat_Writer_Manager.stat_block[0] and category == 1{
			Character_2_Stat_Writer_Manager.def_mod_15 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 2 == Character_2_Stat_Writer_Manager.stat_block[0] and category == 2{
			Character_2_Stat_Writer_Manager.def_mod_20 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_2_Stat_Writer_Manager.stat_block[1]);
		}
		//PLAYER 3
		else if target_code == 3 and category == 0{
			Character_3_Stat_Writer_Manager.def_mod_05 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 3 and category == 1{
			Character_3_Stat_Writer_Manager.def_mod_15 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 3 and category == 2{
			Character_3_Stat_Writer_Manager.def_mod_20 += duration;
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Character_3_Stat_Writer_Manager.stat_block[1]);
		}
		// ENEMY 1
		else if target_code == 4 and category == 0{
			Enemy_1_Stat_Writer_Manager.def_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 4 and category == 1{
			Enemy_1_Stat_Writer_Manager.def_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 4 and category == 2{
			Enemy_1_Stat_Writer_Manager.def_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_1_Stat_Writer_Manager.stat_block[1]);
		}
		// ENEMY 2
		else if target_code == 5 and category == 0{
			Enemy_2_Stat_Writer_Manager.def_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 5 and category == 1{
			Enemy_2_Stat_Writer_Manager.def_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 5 and category == 2{
			Enemy_2_Stat_Writer_Manager.def_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_2_Stat_Writer_Manager.stat_block[1]);
		}
		// ENEMY 3
		else if target_code == 6 and category == 0{
			Enemy_3_Stat_Writer_Manager.def_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 6 and category == 1{
			Enemy_3_Stat_Writer_Manager.def_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 6 and category == 2{
			Enemy_3_Stat_Writer_Manager.def_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_3_Stat_Writer_Manager.stat_block[1]);
		}
		// ENEMY 4
		else if target_code == 7 and category == 0{
			Enemy_4_Stat_Writer_Manager.def_mod_05 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Reduced {1} Defence by 0.5!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 7 and category == 1{
			Enemy_4_Stat_Writer_Manager.def_mod_15 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 1.5!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
		}
		else if target_code == 7 and category == 2{
			Enemy_4_Stat_Writer_Manager.def_mod_20 += duration;	
			Text_Chat_Manager.printed_string += string("\n{0} Boosted {1} Defence by 2.0!",stat_block[1], Enemy_4_Stat_Writer_Manager.stat_block[1]);
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
			if hover == 1{Character_1_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 2{Character_2_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 3{Character_3_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 4{Enemy_1_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 5{Enemy_2_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 6{Enemy_3_Stat_Writer_Manager.current_hp -= 999999;}
			else if hover == 7{Enemy_4_Stat_Writer_Manager.current_hp -= 999999;}
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
		}
	}
	else if array_last(selected_spell) == "CHP"{
		dmg = current_hp;	
	}
	//execute required part
	current_def = stat_block[8] * def_modifiers;
			
	//show_debug_message(dmg);
			
	if targetted_creature[0] == Character_1_Stat_Writer_Manager.stat_block[0]{
		dmg -= Character_1_Stat_Writer_Manager.current_def;//8
		if dmg < 0{ dmg = 0;}
	}
	else if targetted_creature[0] == Character_2_Stat_Writer_Manager.stat_block[0]{
		dmg -= Character_2_Stat_Writer_Manager.current_def;//8
		if dmg < 0{ dmg = 0;}
	}
	else if targetted_creature[0] == Character_3_Stat_Writer_Manager.stat_block[0]{
		dmg -= Character_3_Stat_Writer_Manager.current_def;//8
		if dmg < 0{ dmg = 0;}
	}
			
	else if target_code == 4{
		dmg -= Enemy_1_Stat_Writer_Manager.current_def;//6
		if dmg < 0{ dmg = 0;}
	}
	else if target_code == 5{
		dmg -= Enemy_2_Stat_Writer_Manager.current_def;//6
		if dmg < 0{ dmg = 0;}
	}
	else if target_code == 6{
		dmg -= Enemy_3_Stat_Writer_Manager.current_def;//6
		if dmg < 0{ dmg = 0;}
	}
	else if target_code == 7{
		dmg -= Enemy_4_Stat_Writer_Manager.current_def;//6
		if dmg < 0{ dmg = 0;}
	}
			
	dmg = dmg * random_range(0.75, 1.25);
			
	dmg *= dmg_modifiers;
			
	dmg = round(dmg);
			
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
}