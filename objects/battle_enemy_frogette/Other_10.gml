/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

//default stats
_ATK = 3;
_END = 2;
//What I will call the number of times a successful FUCK has been done
_Current_END = 2;

//Arousal level. Used for Mindblow
arousal = 0;
//Current fun value for which FUN is to occur
fun_value = 0;

//Used to check if a turn on has been set
turned_on=false;
turned_on_counter=0;
//How often the player has been able to FUCK and get the heart
satisfaction = 0;

//<--------------This section may be removed--------------------->
//For Frogette specifically, signifies whether the book was used.
book=false;
book_counter=0

//Bonus Arousal off flags. When these are true, the bonus does not occur anymore.
_bonus_arousal_off[3]=false; //flirt
_bonus_arousal_off[2]=false; //pose
_bonus_arousal_off[1]=false; //Chest-Hands
_bonus_arousal_off[0]=false; //Butt-Mouth
//<--------------End of section--------------------->


//Set Actions
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out")
Battle_SetEnemyActionName(_enemy_slot,1,"* Geek Out");
Battle_SetEnemyActionName(_enemy_slot,2,"* Listen");
