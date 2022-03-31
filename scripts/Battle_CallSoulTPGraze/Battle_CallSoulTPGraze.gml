// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_CallSoulTPGraze(){
	if(Battle_IsBulletValid(self)){
		with(battle_soul_tp){
			event_user(0);
		}
		return true;
	}else{
		return false;
	}
}