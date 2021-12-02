/// @description Delete when not target
// You can write your code in this editor

var menu_state = Battle_GetMenu();

if(menu_state!=BATTLE_MENU.FIGHT_TARGET && menu_state!=BATTLE_MENU.ACT_TARGET && menu_state!=BATTLE_MENU.FUN_TARGET ){
	instance_destroy();
}