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
ether_confirmed = false;
output_string = "";
//ether_array_printed = false;

if stat_block[0] == "AB"{
	ether_array = Ether_Manager.ab_ether;
}
else if stat_block[0] == "AM"{
	ether_array = Ether_Manager.am_ether;
}
else if stat_block[0] == "AF"{
	ether_array = Ether_Manager.af_ether;
}
else if stat_block[0] == "AZ"{
	ether_array = Ether_Manager.az_ether;
}
else if stat_block[0] == "DC"{
	ether_array = Ether_Manager.dc_ether;
}
else if stat_block[0] == "EL"{
	ether_array = Ether_Manager.el_ether;
}
else if stat_block[0] == "FN"{
	ether_array = Ether_Manager.fn_ether;
}
else if stat_block[0] == "FI"{
	ether_array = Ether_Manager.fi_ether;
}
else if stat_block[0] == "HA"{
	ether_array = Ether_Manager.ha_ether;
}
else if stat_block[0] == "HD"{
	ether_array = Ether_Manager.hd_ether;
}
else if stat_block[0] == "JC"{
	ether_array = Ether_Manager.jc_ether;
}
else if stat_block[0] == "JZ"{
	ether_array = Ether_Manager.jz_ether;
}
else if stat_block[0] == "JO"{
	ether_array = Ether_Manager.jo_ether;
}
else if stat_block[0] == "KI"{
	ether_array = Ether_Manager.ki_ether;
}
else if stat_block[0] == "MI"{
	ether_array = Ether_Manager.mi_ether;
}
else if stat_block[0] == "SO"{
	ether_array = Ether_Manager.so_ether;
}
else if stat_block[0] == "SL"{
	ether_array = Ether_Manager.sl_ether;
}
else if stat_block[0] == "TR"{
	ether_array = Ether_Manager.tr_ether;
}
else if stat_block[0] == "TS"{
	ether_array = Ether_Manager.ts_ether;
}