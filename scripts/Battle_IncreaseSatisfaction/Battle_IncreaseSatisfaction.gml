// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_IncreaseSatisfaction(){
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_satsifaction[ENEMY]+=1;
		return true;
	}else{
		return false;
	}
}