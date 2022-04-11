// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetEnemyActionTPCost(){
	var ENEMY=argument[0];
	var ACTION=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0 && ACTION<=6){
		return battle._enemy_action_tp_cost[ENEMY,ACTION];
	}else{
		return 0;
	}
}