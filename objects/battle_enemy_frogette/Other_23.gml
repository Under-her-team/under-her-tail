/// @description Board Resetting End
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(_decrease_endurance) {
	_END-=1;
	_decrease_endurance=false;
}

if (_END==0) {
	if(!Battle_Mindblow_Check()) {
		audio_play_sound(snd_vaporize,0,false);
		image_alpha=0.5;
		repeat(12)
			instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
	}
	Battle_RemoveEnemy(_enemy_slot);
}