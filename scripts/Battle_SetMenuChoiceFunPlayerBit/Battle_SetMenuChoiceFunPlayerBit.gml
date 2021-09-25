///@arg action_choice
///@arg call_event*
function Battle_SetMenuChoiceFunPlayerBit() {
	var PLAYERBIT=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if(PLAYERBIT>=0 && PLAYERBIT<=5){
		battle._menu_choice_fun_player=PLAYERBIT;
	
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
