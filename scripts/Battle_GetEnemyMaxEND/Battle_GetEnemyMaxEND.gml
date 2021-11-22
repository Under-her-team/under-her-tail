// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetEnemyMaxEND(){
	var ENEMY=argument[0];
	
	var ENEMY_inst = Battle_GetEnemy(ENEMY);

	if(instance_exists(ENEMY_inst)){
		return ENEMY_inst._END_MAX;
	}else{
		return -1;
	}
}