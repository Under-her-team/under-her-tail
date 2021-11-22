// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Get_END_String(){
	var ENEMY=argument[0];
	
	var max_end = Battle_GetEnemyMaxEND(ENEMY);
	var endurance = Battle_GetEND(ENEMY);
	
	var end_string = "";
	
	if(endurance!=-1 && max_end!=-1) end_string = "END "+string(endurance)+"/"+string(max_end);
	
	
	return end_string;
}