// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Get_END_String(){
	var ENEMY=argument[0];
	
	var curr_end = Battle_GetCurrentEND(ENEMY);
	var endurance = Battle_GetEND(ENEMY);
	
	var end_string = "END "+string(curr_end)+"/"+string(endurance);
	
	return end_string;
}