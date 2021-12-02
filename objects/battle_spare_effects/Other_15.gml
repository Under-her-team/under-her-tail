/// @description Menu End

if(Battle_GetMenuChoiceButton()==BATTLE_MENU_CHOICE_BUTTON.ACT){
	repeat(12)
		instance_create_depth(x,y-100,DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
}
