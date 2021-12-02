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
		var SLOT=Battle_ConvertEnemySlotToMenuChoiceEnemy(_enemy_slot);
		var tx=battle_board.x-battle_board.left+423;
		var ty=battle_board.y-battle_board.up+15+(32*SLOT);
		var text_prefix="{scale 2}{voice 1}{speed 0}{shadow false}{gui false}{depth "+string(DEPTH_BATTLE.UI_HIGH)+"}{instant true}";
		var end_text = instance_create_depth(tx,ty,0,battle_menu_end_text);
		end_text.text=text_prefix+"END "+string(_END)+"/"+string(_END_MAX);
		break;
		
}