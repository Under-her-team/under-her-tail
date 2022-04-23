/// @description Pivot frog
// You can write your code in this editor

if (live_call()) return live_result;


if(!_tongue_out){
	var x_length=battle_soul.x-x;
	var y_length=battle_soul.y-y;
	var current_angle=-90-radtodeg(arctan(y_length/x_length));
	if(x_length<0) current_angle+=180;
	
	if(_tracking){
		_angle=current_angle;
	}
	else{
		var angle_diff=0;
		if(_angle>=90 && current_angle<=-90) angle_diff=360+(current_angle-_angle);
		else if(current_angle>=90 && _angle<=-90) angle_diff=(current_angle-_angle)-360;
		else angle_diff=current_angle-_angle;
		
		if(abs(angle_diff)<=0.5) {
			_angle=current_angle;
			_tracking=true;
		}
		else{
			_angle+=(angle_diff/3);
			if(_angle>180) _angle-=360;
			else if(_angle<-180) _angle+=360;
		}
	}
	
	_tongue=0;
	_timer1-=1;
	if(_timer1<=0){
		_tongue_out=true;
		_timer1=10;
		_timer2=10;
		_tracking=false;
	}
}
else{
	_tongue=1;
	
	if(_timer2>0){
		_timer2-=1;
		_tongue_length+=10;
		_fly=0;
		_soul_flag=false;
	}else if(_timer1>0 && _soul_spawn){
		_timer1-=1;
		_tongue_length-=10;
		_fly=0;
		_soul_flag=true;
		if(_timer1<=0) {
			_flies_eaten+=1;
			_soul_spawn=false;
			_soul_flag=false;
		}
	}
	else if(_timer1>0){
		_timer1-=1;
		_tongue_length-=10;
		_fly=1;
		if(_timer1<=0) _flies_eaten+=1;
		if(_flies_eaten==3) _soul_spawn=true;
		_soul_flag=false;
	}else {
		_tongue_out=false;
		_tongue_length=0;
		_timer1=30;
		_fly=0;
		_soul_flag=false;
	}
	var reverted_angle = (_angle+90)*-1;
	_tip_y=_tongue_length*sin(degtorad(reverted_angle));
	_tip_x=_tongue_length*cos(degtorad(reverted_angle));
	_fly_y=(_tongue_length+6)*sin(degtorad(reverted_angle));
	_fly_x=(_tongue_length+6)*cos(degtorad(reverted_angle));
}


var add_fly = 0;
if(_fly) add_fly=4;
var line_x = x-(_tongue_length+6+add_fly)*sin(degtorad(_angle));
var line_y = y-(_tongue_length+6+add_fly)*cos(degtorad(_angle));

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
