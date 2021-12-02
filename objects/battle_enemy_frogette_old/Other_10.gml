/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

//default stats
_END = 2;
//What I will call the number of times a successful FUCK has been done
_Current_END = 2;

//Current fun value for which FUN is to occur. Used as a counter
fun_value = 0;

//For Frogette specifically
//Variables that keep track of what turn on sequences are available. 
//Listen is part of a sequence, so it's a number. If it's interrupted, it's
//set back to 0, and reset. If it's completed, it's -1, showing it's no longer available
//The other two need only one thing done to activated their turn ons. If it's
//true, it can still be done. If not, it's be achieved.
_turn_on_listen = 0;
_turn_on_geek_out = true;
_turn_on_book = true;

//Set Actions
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out")
Battle_SetEnemyActionName(_enemy_slot,1,"* Geek Out");
Battle_SetEnemyActionName(_enemy_slot,2,"* Listen");
