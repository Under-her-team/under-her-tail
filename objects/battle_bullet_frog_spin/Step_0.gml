/// @description Collision & timing
// You can write your code in this editor
if (live_call()) return live_result;

switch (_phase){
	case 0:
		_timer-=1;
		if(_timer<=0){
			_phase=1;
			_timer=15;
			_tongue=1;
		}
		break;
	case 1:
		_timer-=1;
		_tongueLength+=6;
		if(_timer<=0){
			_phase=2;
			_timer=60;
		}
		break;
	case 2:
		_timer-=1;
		if(_timer<=0){
			_phase=3;
		}
		break;
	case 3:
		_angle+=3;
		if(_angle>360) _angle-=360;
		break;
}

_tip_y=_tongueLength*cos(degtorad(_angle));
_tip_x=_tongueLength*sin(degtorad(_angle));

var line_x = x-(_tongueLength+6)*sin(degtorad(_angle));
var line_y = y-(_tongueLength+6)*cos(degtorad(_angle));

if(collision_circle(x,y,25,battle_soul,false,true) || collision_line(x,y,line_x,line_y,battle_soul,false, true)){
	Battle_CallSoulEventBulletCollision();
}

if(collision_circle(x,y,25,battle_soul_tp,false,true) || collision_line(x,y,line_x,line_y,battle_soul_tp,false, true)){
	Battle_CallSoulTPGraze();
	Battle_SpecialGrazing(true);
} else {
	_in_contact_with_graze=false;
	Battle_SpecialGrazing(false);
}

