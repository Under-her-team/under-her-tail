// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetMindblowPercent(){
	var ENEMY=argument[0];
	var MINDBLOW=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_mindblow_percent[ENEMY]=MINDBLOW;
		return true;
	}else{
		return false;
	}
}