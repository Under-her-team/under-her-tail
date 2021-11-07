// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetIdleAnimation(){
	var ENEMY=argument[0];
	
	if(instance_exists(ENEMY)){
		return ENEMY._idle_poses[ENEMY._idle_value];
	}else{
		return spr_default;
	}
}