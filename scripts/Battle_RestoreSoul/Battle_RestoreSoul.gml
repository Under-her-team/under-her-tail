// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_RestoreSoul(){
	if(instance_exists(battle_soul_red)) {
		with(battle_soul_red){
			moveable=true;
			_fucking=false;
			image_alpha=1;
		}
	}
}