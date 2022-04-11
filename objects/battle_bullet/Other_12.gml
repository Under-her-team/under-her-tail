/// @description Soul Graze
// You can write your code in this editor
if(!_grazed){
	_grazed=true;
	Battle_SoulGrazeEvent(_tp_value);
}
else{
	Battle_SoulGrazeEvent(_tp_value/room_speed);
}

if(!_in_contact_with_graze){
	_in_contact_with_graze=true;
	audio_play_sound(snd_graze_wav,0,false);
}