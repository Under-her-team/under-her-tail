/// @description Constant watch
// You can write your code in this editor

if(instance_exists(_inst0) && _creation_flag0){
	
	if(_inst0.done && !_creation_flag1) alarm[1]=1;
	
	
} else if(_creation_flag0){
	instance_destroy();
}



if(instance_exists(_inst1)  && _creation_flag1){
	
	if(_inst1.done) _activate_delay=true; 
	
} else if(_creation_flag1){
	instance_destroy();
}

if(_activate_delay) time_delay-=1;

if(time_delay==-1) instance_destroy()