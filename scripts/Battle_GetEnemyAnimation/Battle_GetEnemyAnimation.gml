///@arg enemy_slot, state
function Battle_GetEnemyAnimation(){
	var ENEMY=argument[0];
	var STATE=argument[1];
	
	if(instance_exists(ENEMY)){
		var animation = Battle_GetEnemyAnimationState(ENEMY);
		if(animation!=-1) return ENEMY._sex_animations[animation,STATE]
		else return spr_default;
	}else{
		return spr_default;
	}
}