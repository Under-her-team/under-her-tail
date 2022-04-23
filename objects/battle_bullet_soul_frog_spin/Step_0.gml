/// @description
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(_timer>0){
	_timer-=1;
}
else{
	_angle+=3;
	x=bb_x-(40*sin(degtorad(_angle)));
	y=bb_y-(40*cos(degtorad(_angle)));
}