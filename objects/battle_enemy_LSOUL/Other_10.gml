/// @description Soul Collision
// You can write your code in this editor
battle.sexcess_flag=true;

Battle_Sexcess(_true_soul);

Battle_SetTurnTime(90);
audio_play_sound(snd_level_up,0,false);

if(_true_soul) sprite_index=spr_souls_true_fucking;
else sprite_index=spr_souls_fucking;