var file = file_text_open_read("C:/GitHub/Zedegri_Combat_Gamemaker/datafiles/config.json");
file_text_readln(file);
global.speed_cap = real(string_digits(file_text_readln(file)));
global.level = real(string_digits(file_text_readln(file)));

global.ENVDMG = real(string_digits(file_text_readln(file))); //environmental damage
global.PLSG = real(string_digits(file_text_readln(file)))/10;  //Player Speed variable
// ZC < ZZC, XC
global.MAX_AP = real(string_digits(file_text_readln(file)));

file_text_close(file);

global.Mass_Deactivate = false;
//room_goto(Room_Player_Select);


window_set_size(1920,1080);