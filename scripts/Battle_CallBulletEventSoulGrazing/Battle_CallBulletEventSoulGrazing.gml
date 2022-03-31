// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_CallBulletEventSoulGrazing(){
	if(Battle_IsBulletValid(other)){
		with(other){
			event_user(BATTLE_BULLET_EVENT.SOUL_GRAZE);
		}
	}else{
		return false;
	}
}