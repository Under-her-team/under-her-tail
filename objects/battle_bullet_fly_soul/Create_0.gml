/// @description Moving like a fly
// You can write your code in this editor

// Inherit the parent event
event_inherited();

_movement_timer=30;
_delay_timer=15;
_moving=true;
var angle_radians = arctan((battle_soul.y-y)/(battle_soul.x-x));
if((battle_soul.x-x)<0) angle_radians+=degtorad(180);
_fly_movement_x=2*cos(angle_radians);
_fly_movement_y=2*sin(angle_radians);