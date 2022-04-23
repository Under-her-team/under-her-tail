/// @description Turn Start
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_create_depth(battle_board.x,battle_board.y,-1000,battle_bullet_frog_turret_turnedOn);
_soul=instance_create_depth(battle_board.x+100,battle_board.y+100,0,battle_bullet_soul_frog_turret);
battle_enemy_HEART.original_turn=self;