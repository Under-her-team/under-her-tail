/// @description Turn Start
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_create_depth(battle_board.x,battle_board.y,0,battle_bullet_frog_spin);

var random_spot=random_range(-65,65)

instance_create_depth(battle_board.x+random_spot,battle_board.y-65,0,battle_bullet_fly);
_flies+=1;

var altered_x=(40*sin(degtorad(30)));
var altered_y=(40*cos(degtorad(30)));

_soul=instance_create_depth(battle_board.x-altered_x,battle_board.y-altered_y,0,battle_bullet_soul_frog_spin);
battle_enemy_HEART.original_turn=self;