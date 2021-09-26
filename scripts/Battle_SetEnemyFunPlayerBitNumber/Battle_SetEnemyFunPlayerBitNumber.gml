// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyFunPlayerBitNumber(){
	var ENEMY=argument[0];
	var NUM=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && NUM>=0 && NUM<=6){
		battle._enemy_fun_player_number[ENEMY]=NUM;
		return true;
	}else{
		return false;
	}

}