/// @description Turn Start
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var random_spot=random_range(-65,65)

instance_create_depth(battle_board.x+random_spot,battle_board.y-65,0,battle_bullet_fly);
_flies+=1;