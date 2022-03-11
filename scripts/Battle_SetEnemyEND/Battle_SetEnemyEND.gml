// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyEND(){
	var END=argument[0];

	if(instance_exists(Battle_GetEnemy(1))){
		battle._enemy_end[1]=END;
		return true;
	}else{
		return false;
	}
}