// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_MindblowBackground(){
	if(instance_exists(battle_bg)){
		with(battle_bg){
			event_user(0);
		}
	}
}