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
		_tongue_length+=7;
	}else if(_timer1>0){
		_timer1-=1;
		_tongue_length-=7;
	}else {
		_tongue_out=false;
		_tongue_length=0;
		_timer1=30;
	}
	var reverted_angle = (_angle+90)*-1;
	_tip_y=_tongue_length*sin(degtorad(reverted_angle));
	_tip_x=_tongue_length*cos(degtorad(reverted_angle));
}
