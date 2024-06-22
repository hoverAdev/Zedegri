/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_shift) and keyboard_check_pressed(ord("H")){
	In_Valid_Position = false;
	io_clear();
	if y == shown_y{
		Move_Up = true;	
	}
	else if y == hidden_y{
		Move_Down = true;	
	}
}
if Move_Up == true{
	y -= 1;
	if y == hidden_y{
		In_Valid_Position = true;
		Move_Up = false;
	}
}
else if Move_Down == true{
	y += 1;
	if y == shown_y{
		In_Valid_Position = true;	
		Move_Down = false;
	}
}