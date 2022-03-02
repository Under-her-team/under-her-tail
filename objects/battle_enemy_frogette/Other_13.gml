/// @description Menu Switch
// You can write your code in this editor

if (live_call()) return live_result;

switch(Battle_GetMenu()){
	case BATTLE_MENU.FIGHT_TARGET:
		//No break statement so that all three do the same thing
	case BATTLE_MENU.ACT_TARGET:
	
	case BATTLE_MENU.FUN_TARGET:
		var bar_x=battle_board.x-battle_board.left-5+28+200+20;
		var bar_y=battle_board.y-battle_board.up+22;
		var inst = instance_create_depth(bar_x,bar_y,0,battle_menu_mindblow_bar);
		inst.enemy_slot=_enemy_slot;
		inst.mindblow_precent=_mindblow_percent;
		break;
	
	case BATTLE_MENU.FUN_ANIM:
		Battle_HoldSex();
		_state=BATTLE_ENEMY_STATE.FUN; 
		break;
		
}