///@arg enemy_slot
function Battle_GetEnemyAnimationState(){
	var ENEMY=argument[0];
	
	if(instance_exists(ENEMY)){
		return (ENEMY._END-ENEMY._Current_END)-1;
	}else{
		return -1;
	}
}