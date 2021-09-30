/// @description Soul Collision
// You can write your code in this editor
audio_play_sound(snd_item_heal,0,false);
with(battle_enemy_LSOUL){
	event_user(BATTLE_BULLET_EVENT.TRUE_SOUL_GET)
}
instance_destroy();