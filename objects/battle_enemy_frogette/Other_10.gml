/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

//default stats
_ATK = 3;
_END = 2;
//What I will call the number of times a successful FUCK has been done
_sex_damage = 0;
//Arousal level
_arousal = 0;
//How often the player has been able to FUCK and get the heart
_satisfaction = 0

//For Frogette specifically, signifies whether the book was used.
book=false;

//Bonus Arousal off flags. When these are true, the bonus does not occur anymore.
_bonus_arousal_off[3]=false; //flirt
_bonus_arousal_off[2]=false; //pose
_bonus_arousal_off[1]=false; //Chest-Hands
_bonus_arousal_off[0]=false; //Butt-Mouth

Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out")
Battle_SetEnemyActionName(_enemy_slot,1,"* Flirt");
Battle_SetEnemyActionName(_enemy_slot,2,"* Pose");

Battle_SetEnemyFunSubjectNumber(_enemy_slot,2);
Battle_SetEnemyFunPlayerBitNumber(_enemy_slot,2);
Battle_SetEnemyFunSubjectName(_enemy_slot,0,"* Chest");
Battle_SetEnemyFunSubjectName(_enemy_slot,1,"* Butt");
Battle_SetEnemyFunPlayerBitName(_enemy_slot,0,"* Hands");
Battle_SetEnemyFunPlayerBitName(_enemy_slot,1,"* Mouth")