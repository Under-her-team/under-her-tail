// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetMenuChoiceFinish(){
	var FINISH=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}
	
	if(FINISH>=0 && FINISH<=1){
		battle._menu_choice_finish=FINISH;
		
		if(CALL) Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		
		return true;
	}else{
		return false;
	}
}