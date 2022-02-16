/// @description Menu End
//if (live_call()) return live_result;

var menu_choice = Battle_GetMenuChoiceButton();

if(menu_choice==BATTLE_MENU_CHOICE_BUTTON.ACT){
	var menu_choice_action = Battle_GetMenuChoiceAction();
	if(menu_choice_action==0) {
		audio_play_sound(snd_vaporize,0,false);
		repeat(12)
			instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
	}
	else {
		image_alpha=0;
		Battle_RemoveEnemy(_enemy_slot);
	}
}
else if(menu_choice==BATTLE_MENU_CHOICE_BUTTON.FUN){
	audio_play_sound(snd_level_up,0,false);
	instance_create_depth(x,y-(sprite_width/3),DEPTH_BATTLE.UI_HIGH,battle_sex_transition_effect);
}