// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_PostCoitus(){
	var ENEMY=argument[0];
	var SLOT=argument[1];
	
	if(ENEMY._Current_END==0) {
		ENEMY._fade_out=true;
		Battle_RemoveEnemy(SLOT);
	}
	with(battle_soul_red){
		moveable=true;
		_fucking=false;
		image_alpha=1;
	}
	
	return true;
}