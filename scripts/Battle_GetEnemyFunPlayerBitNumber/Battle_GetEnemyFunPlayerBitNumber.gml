// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetEnemyFunPlayerBitNumber(){
	
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle._enemy_fun_player_number[ENEMY];
	}else{
		return 0;
	}
	
}