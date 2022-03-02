var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();

if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE && MENU!=BATTLE_MENU.FUCK){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		image_index=1;
		if(MENU==BATTLE_MENU.BUTTON){
			Battle_Menu_HideSoul(false);
			battle_soul.x=x+22;
			battle_soul.y=y+20;
		}
	}else{
		image_index=0;
	}
}else{
	image_index=0;
}