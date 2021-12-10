/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Spare Effects");
Battle_SetEnemyActionNumber(_enemy_slot,1);
Battle_SetEnemyActionName(_enemy_slot,0,"* Puff");
Battle_SetEnemyActionName(_enemy_slot,1,"* Remove");

image_alpha=0.5;