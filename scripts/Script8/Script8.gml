// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stagger_Enemy_Addendum(input, target){
	var dhundred = irandom_range(1,100);
	if input == 3{
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
	else if input == 4{
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
	
	else if input == 5{
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
	
	else if input == 6{
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
	
	else if input == 7{
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
	
	else if input == 8{
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
	
	else if input == 9{
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
	
	else if input == 10{
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
function Stagger_Player_Addendum(input, target){
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