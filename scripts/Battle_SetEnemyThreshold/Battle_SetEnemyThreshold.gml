// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyThreshold(){
	var ENEMY=argument[0];
	var THRESHOLD=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_threshold[ENEMY]=THRESHOLD;
		return true;
	}else{
		return false;
	}
}