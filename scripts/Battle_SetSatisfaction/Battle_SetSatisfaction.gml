// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetSatisfaction(){
	var ENEMY=argument[0];
	var SATISFACTION=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_satsifaction[ENEMY]=SATISFACTION;
		return true;
	}else{
		return false;
	}
}