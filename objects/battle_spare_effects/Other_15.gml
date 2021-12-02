/// @description Menu End
if (live_call()) return live_result;

if(Battle_GetMenuChoiceButton()==BATTLE_MENU_CHOICE_BUTTON.ACT){
	audio_play_sound(snd_vaporize,0,false);
	repeat(12)
		instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
}
