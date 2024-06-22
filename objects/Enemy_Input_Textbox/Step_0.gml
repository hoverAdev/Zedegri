/// @description Insert description here
// You can write your code in this editor
if enable == true and keyboard_check_pressed(vk_anykey) and keyboard_check_pressed(vk_enter) == false{
	input_Text = keyboard_string;
}
if keyboard_check_pressed(vk_delete){
	input_Text = "";
	keyboard_string = "";
}
