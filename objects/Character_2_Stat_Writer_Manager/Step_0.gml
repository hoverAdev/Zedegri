/// @description Insert description here
// You can write your code in this editor
try{
if current_speed >= stat_block[4]{
	//global.all_state_pause = 1;
	current_speed = 0;
	

}
if global.all_state_pause != 1{ current_speed += 0.75; }
}
catch( _exception){}