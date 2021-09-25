///@arg enemy_slot
function Battle_GetEnemyAnimationState(){
	var ENEMY=argument[0];
	
	if(instance_exists(ENEMY)){
		return ENEMY._sex_damage;
	}else{
		return -1;
	}
}