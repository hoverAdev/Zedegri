/// @description Insert description here
// You can write your code in this editor

if Draw_Background_Shade{
	draw_set_alpha(0.5);
	draw_rectangle_color(0,0,1920,1080,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	global.Mass_Deactivate = true;
}
if Disable_Timer == true{
	global.all_state_pause = true;
}

if room == Room_Player_Select and Is_Tutorial_Active{
	draw_set_font(font_arial);
	if Player_Enter_Presses == 0{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"Welcome to the Zedegri Combat Tutorial!\nFirst we need to understand the -Character Select Screen-\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 1{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"The characters you select on this screen will be the characters you use in combat\nYou can select up to 3 unique characters for your team\nHowever, you cannot have any duplicates in your team\nAnd you are restricted to one choice per section\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 2{
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(126,310,c_black,c_white,"One section is one of these clusters\nSo you can not pick two characters in this box above\n[Press ENTER to proceed]");
		draw_set_alpha(0.25);
		draw_rectangle_color(94,96,860,300,c_red,c_red,c_red,c_red,false);
		draw_set_alpha(1);
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 3{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"Select one character with the [LMB] (Left Mouse Button)\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 4{
		Draw_Background_Shade = false;
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		if global.partyMemberPosition != 0{
			Draw_Background_Shade = true;
			draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"The character you chose is now the first party member\nYou can select up to three characters...\n[Press ENTER to proceed]");
			if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
		}
	}
	else if Player_Enter_Presses == 5{
		draw_set_halign(fa_center); draw_set_valign(fa_top);
		draw_text_outlined(1439,640,c_black,c_white,"Or end party selection prematurely\ngoing in with only what you selected\n[Press ENTER to proceed]");
		draw_set_alpha(0.25);
		draw_rectangle_color(1247,768,1629,926,c_teal,c_teal,c_teal,c_teal,false);
		draw_set_alpha(1);
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 6{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"The last thing about the Character Selection is that\nyou can clear your current selection by pressing Delete\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 7{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"That is all for the Character Selection Tutorial\n[Press ENTER to Close Tutorial]");
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
	else if Player_Enter_Presses == 8{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		Draw_Background_Shade = false;
		if keyboard_check_pressed(vk_enter){ Player_Enter_Presses += 1; io_clear(); }
	}
}
else if room == Room_Enemy_Select and Is_Tutorial_Active{
	draw_set_font(font_arial);
	Enemy_Input_Textbox.disabled_selection = true;
	Draw_Background_Shade = true;
	if Enemy_Enter_Presses == 0{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"This is the -Enemy Selection Screen-\nDue to this just being a Concept for the Combat System, you pick the fight you want\nThis is just for debug purposes\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Enemy_Enter_Presses += 1; io_clear(); }
	}
	else if Enemy_Enter_Presses == 1{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"Input the number correlated to the combat encounter you wish to engage with\npress Delete to clear the number you put in\nPress Enter to enter the combat encounter\n[Press ENTER to Close Tutorial]");
		if keyboard_check_pressed(vk_enter){ Enemy_Enter_Presses += 1; io_clear(); }
	}
	else if Enemy_Enter_Presses == 2{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		Draw_Background_Shade = false;
		Enemy_Input_Textbox.disabled_selection = false;
		if keyboard_check_pressed(vk_enter){ Enemy_Enter_Presses += 1; io_clear(); }
	}
}
else if room = Room_Combat and Is_Tutorial_Active{
	global.all_state_pause = true;
	Draw_Background_Shade = true;
	if Combat_Enter_Presses == 0{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"Welcome to the Combat Screen, this is where fights really happen\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	//This is your character
	else if Combat_Enter_Presses == 1{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,0,287,300,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"This is your character, this box shows everything there is to know about them\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 2{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,0,287,98,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"This is where BUFFS and DEBUFFS appear\nBuffs and Debuffs are seperated into two catagories\nAttack and Defence\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 3{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,0,287,98,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"Buffs and Debuffs are also separated into 0.5 times, 1.5 times, and 2 times\nBuffs and Debuffs are Multiplicative\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	//This is your HP, once this is below 0, this character is dead, but can be healed back to life
	else if Combat_Enter_Presses == 4{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,140,287,180,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"This is a characters Health Points, abbreviated to HP\nOnce a characters HP reaches Zero, they can no longer attack\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	//This is your EP, or Ether Points, whenever you use Ether moves, this decreases
	else if Combat_Enter_Presses == 5{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,180,287,220,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"This is a characters Ether Points, abbreviated to EP\nWhen using Ether attacks,this number will decrease down to Zero\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 6{
		/*draw_set_alpha(0.25);
		draw_rectangle_color(98,180,287,220,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	*/
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"Ether Attacks can be selected in the Ether Menu, which looks like this\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 7{
		Character_1_Stat_Writer_Manager.draw_ether_menu = true;
		/*draw_set_alpha(0.25);
		draw_rectangle_color(98,180,287,220,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	*/
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,500,c_black,c_white,"This is the Ether Menu\nHere is where you would select your Arts\nHere you can see the Name of the Attack, a brief Description, and the Ether Point Cost\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); Character_1_Stat_Writer_Manager.draw_ether_menu = false;}
	}
	else if Combat_Enter_Presses == 8{
		Character_1_Stat_Writer_Manager.draw_ether_menu = true;
		/*draw_set_alpha(0.25);
		draw_rectangle_color(98,180,287,220,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	*/
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,500,c_black,c_white,"Ether Attacks can do more than just deal Damage\nSome Ether Arts can:\nBuff or Debuff Attack or Defence\nRecover or Steal Health\nReset the Enemies Timer (will be explained Later)\nOr have a chance to Instantly Kill\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); Character_1_Stat_Writer_Manager.draw_ether_menu = false;}
	}
	else if Combat_Enter_Presses == 9{
		/*draw_set_alpha(0.25);
		draw_rectangle_color(98,180,287,220,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);	*/
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"Ether Attacks sure can do a lot\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 10{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"These are your Attack Points, abbreviated to AP\nAttack Points are what you use to Attack\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 11{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"You always start a battle with 3 Attack Points, this number increases as Combat continues\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 12{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"When Attacking, you have 3 options of Attack\nLight Attack: Costing 1 Attack Point to use\nMedium Attack: Costing 2 Attack Points to use\nHeavy Attack: Costing 3 Attack Points to use\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 13{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"Once you are at 4 or more Attack Points, you can do a Combo Attack\nDoing a Combo Attack sets your AP back to 3 on your next turn\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 14{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"The more AP you expend to do a combo, the stronger the final hit will be\nUnlike Regular Attacks, the Combo Finisher can never miss\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 15{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,220,287,260,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"You do not need to memorize Combos, as when you choose to attack, they will be shown to you\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 16{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,260,287,300,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"This is the long awaited Timer\nWhen this timer is reaches full, it will flip back to 0 and it will become your turn\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 17{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,260,287,300,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"All entities in Combat have a timer, and when they are staggered\ntheir timer resets and their turn is therefore delayed\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 18{
		draw_set_alpha(0.25);
		draw_rectangle_color(98,260,287,300,c_blue,c_blue,c_blue,c_blue,false);
		draw_set_alpha(1);
		draw_set_halign(fa_left); draw_set_valign(fa_top);
		draw_text_outlined(287,290,c_black,c_white,"Other things you can do on your turn:\nDefend, Defending increases your defence, and increases your AP and EP by one\nDefending is the only way to restore EP\nAssisting, Assisting makes a teammate harder to hit\nAssisting stacks indefinitely\n[Press ENTER to proceed]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 19{
		draw_set_halign(fa_center); draw_set_valign(fa_middle);
		draw_text_outlined(room_width/2,room_height/2,c_black,c_white,"Theory can only take you so far, let's see how you really do!\n[Press ENTER to End Tutorial]");
		if keyboard_check_pressed(vk_enter){ Combat_Enter_Presses += 1; io_clear(); }
	}
	else if Combat_Enter_Presses == 20{
		Draw_Background_Shade = false;
		Disable_Timer = false;
		global.all_state_pause = false;
		Is_Tutorial_Active = false;
		Combat_Enter_Presses += 1;
	}
	//This is your AP, or Attack Points, this starts at 3
}