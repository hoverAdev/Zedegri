// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_Whole_File(Text_File){
	var file_buffer = buffer_load(Text_File);
	var s = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);
	return s;
}