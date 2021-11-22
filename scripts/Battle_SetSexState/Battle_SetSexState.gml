// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetSexState(){
	var sex_state = argument[0];
	battle._battle_sex_stage=sex_state;
	return true;
}