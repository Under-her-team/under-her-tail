// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Menu_HideSoul(){
	var HIDE=argument[0];
	
	if(HIDE){
		battle_soul.image_alpha=0;
	}
	else{
		battle_soul.image_alpha=1;
	}
	
	return true;
}