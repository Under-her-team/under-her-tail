/// @description
// You can write your code in this editor

if(place_meeting(x,y,battle_soul)){
	audio_play_sound(snd_item_heal,0,false);

	original_turn.true_soul_collected=true;

	instance_destroy();
}
