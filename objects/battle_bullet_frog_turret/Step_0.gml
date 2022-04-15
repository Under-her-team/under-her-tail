/// @description Pivot frog
// You can write your code in this editor

if (live_call()) return live_result;

if(!_tongue_out){
	var x_length=battle_soul.x-x;
	var y_length=battle_soul.y-y;
	_angle=-90-radtodeg(arctan(y_length/x_length));
	if(x_length<0) _angle+=180;
	
	_tongue=0;
	_timer1-=1;
	if(_timer1<=0){
		_tongue_out=true;
		_timer1=10;
		_timer2=10;
		if(x_length>=0) _negative_x=false;
		else _negative_x=true;
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
	//var test_angle = radtodeg(arctan(y_length/x_length));
	var reverted_angle = (_angle+90)*-1;
	if(_negative_x) reverted_angle-=180;
	_tip_y=_tongue_length*cos(degtorad(reverted_angle));
	_tip_x=_tongue_length*sin(degtorad(reverted_angle));
}
