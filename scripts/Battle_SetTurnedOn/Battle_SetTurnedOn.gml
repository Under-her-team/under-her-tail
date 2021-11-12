// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetTurnedOn(){
	var ENEMY=argument[0];
	var TURNED_ON=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		battle._enemy_turned_on[ENEMY]=TURNED_ON;
		return true;
	}else{
		return false;
	}
}