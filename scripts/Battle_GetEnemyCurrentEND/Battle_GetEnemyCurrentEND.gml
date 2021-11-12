// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetCurrentEND(){
	var ENEMY=argument[0];
	
	var ENEMY_inst = Battle_GetEnemy(ENEMY);

	if(instance_exists(ENEMY_inst)){
		return ENEMY_inst._Current_END;
	}else{
		return -1;
	}
}