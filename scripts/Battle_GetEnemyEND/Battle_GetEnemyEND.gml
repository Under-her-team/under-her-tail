// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetEnemyEND(){
	if(instance_exists(Battle_GetEnemy(1))){
		return battle._enemy_end[1];
	}else{
		return 0;
	}
}