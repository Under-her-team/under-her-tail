// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Sexcess(){
	var heart = argument[0];
	
	if(heart) Battle_HeartGrabbed();
	
	//Add each soul's properties here
	with(battle_soul_red){
		moveable=false;
		_fucking=true;
		image_alpha=0;
	}
}