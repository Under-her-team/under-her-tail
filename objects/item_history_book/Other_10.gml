/// @description Use
// You can write your code in this editor

// Inherit the parent event


if(!instance_exists(battle_enemy_frogette)){
	Dialog_Add(Lang_GetString("item.history_book.use"));
	Dialog_Start();
}

event_inherited();

