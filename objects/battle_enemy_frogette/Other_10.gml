/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

//default stats
_ATK = 3;
_END = 2;
//What I will call the number of times a FUCK has been done
_sex_damage = 0;
//The threshold for getting heart shaped objects to appear
_THR = 6;
//The base level
_arousal = 0;
//How often the player has been able to FUCK and get the heart
_satisfaction = 0

//For Frogette specifically, signifies whether the book was used.
_book=false;

Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out")
Battle_SetEnemyActionName(_enemy_slot,1,"* Flirt");
Battle_SetEnemyActionName(_enemy_slot,2,"* Pose");