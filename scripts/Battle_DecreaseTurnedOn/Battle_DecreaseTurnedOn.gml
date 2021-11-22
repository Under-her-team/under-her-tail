// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_DecreaseTurnedOn(){
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		if(battle._enemy_turned_on[ENEMY]>0) battle._enemy_turned_on[ENEMY]-=1;
		return true;
	}else{
		return false;
	}
}