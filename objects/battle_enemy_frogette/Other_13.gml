/// @description Menu Switch
// You can write your code in this editor
switch(Battle_GetMenu()){
	case BATTLE_MENU.FIGHT_TARGET:
		//No break statement so that all three do the same thing
	case BATTLE_MENU.ACT_TARGET:
	
	case BATTLE_MENU.FUN_TARGET:
		var inst = instance_create_depth(0,0,0,battle_menu_mindblow_bar);
		inst.enemy_slot=_enemy_slot;
		inst.mindblow_precent=_mindblow_percent;
		break;
		
}