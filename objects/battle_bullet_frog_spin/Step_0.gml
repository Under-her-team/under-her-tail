/// @description Open tongue and spin
// You can write your code in this editor
if (live_call()) return live_result;
// Inherit the parent event
event_inherited();

switch(_phase){
	case 0: 
		if(_timer>0) _timer-=1;
		else {
			_timer=30;
			_phase=1;
			image_index=1;
		}
		break;
	case 1:
		if(_timer>0) _timer-=1;
		else _phase=2;
		break;
	case 2:
		image_angle+=5;
}