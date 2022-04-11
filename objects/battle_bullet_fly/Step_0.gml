/// @description MOVE
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(_moving){
	_movement_timer-=1;
	x+=_fly_movement_x;
	y+=_fly_movement_y;
	if(_movement_timer==0){
		_moving=false;
		_delay_timer=15;
	}
}else{
	_delay_timer-=1;
	if(_delay_timer==0){
		_moving=true;
		_movement_timer=30;
		var angle_radians = arctan((battle_soul.y-y)/(battle_soul.x-x));
		if((battle_soul.x-x)<0) angle_radians+=degtorad(180);
		_fly_movement_x=2*cos(angle_radians);
		_fly_movement_y=2*sin(angle_radians);
	}
}