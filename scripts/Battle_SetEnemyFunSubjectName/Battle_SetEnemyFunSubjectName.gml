// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyFunPlayerBitName(){
	var ENEMY=argument[0];
	var PLAYERBIT=argument[1];
	var TEXT=argument[2];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && PLAYERBIT>=0 && PLAYERBIT<=6){
		battle._enemy_player_name[ENEMY,PLAYERBIT]=TEXT;
		return true;
	}else{
		return false;
	}

}