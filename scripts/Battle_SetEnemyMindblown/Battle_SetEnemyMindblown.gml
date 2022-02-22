// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyMindblown(){
	var MINDBLOW=argument[0];

	if(instance_exists(Battle_GetEnemy(1))){
		battle._enemy_mindblow=MINDBLOW;
		return true;
	}else{
		return false;
	}
}