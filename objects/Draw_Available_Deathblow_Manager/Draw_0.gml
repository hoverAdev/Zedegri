/// @description Insert description here
// You can write your code in this editor
//["ZC",   "ZZC","XC",  "ZXC","XZC","ZZZC",   "ZXZC","ZZXC","XZZC","ZZZZC"];
//show_debug_message(deathblow_possible);

if deathblow_possible == true{
	//figure out how to have it be sticky
	//as soon as they select the enemy, draw self, and only draw self again after their turn ends,
	//which will leave an invalid scripture of A or some shit.
	draw_self();
	//show_debug_message("Drawn Self");
	if current_ap >= 4{
		draw_text(x,y+32*3,"ZC");
	}
	if current_ap >= 5{
		draw_text(x,y+32*2,"ZZC, XC");
	}
	if current_ap >= 6{
		draw_text(x,y+32,"ZXC, ZZZC, XZC");
	}
	if current_ap >= 7{
		draw_text(x,y,"ZXZC, ZZXC, ZZZZC, XZZC");
	}
}
if drawn_ep_values > 2{
	drawn_ep_values = 2;	
}
if hidden_ep_values{
	draw_self();
	hidden_ep_values = false;
	current_ap = 0;
}
//show_debug_message(array_to_print);