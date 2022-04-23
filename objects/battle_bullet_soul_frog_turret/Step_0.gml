/// @description Move behind frog
// You can write your code in this editor

// Inherit the parent event
if (live_call()) return live_result;
event_inherited();


var angle = (battle_bullet_frog_turret_turnedOn._angle)+180;
var tongue_length = battle_bullet_frog_turret_turnedOn._tongue_length+6;
if(tongue_length<30) tongue_length=35;
if(battle_bullet_frog_turret_turnedOn._soul_flag) soul_stage=1;
else if(!battle_bullet_frog_turret_turnedOn._soul_spawn && soul_stage==1) soul_stage=2;


switch(soul_stage){
	case 1:
		x=bb_x+(tongue_length*sin(degtorad(angle)));
		y=bb_y+(tongue_length*cos(degtorad(angle)));
		break;
	case 2:
		x=bb_x+(35*sin(degtorad(angle)));
		y=bb_y+(35*cos(degtorad(angle)));
		break;
	default:
		x=100;
		y=100;
		break;
}