/// @description Remove INPUT.CONFIRM stuff
// You can write your code in this editor

if(instance_exists(_inst)){
	_inst.x=x-left+text_offset_x;
	_inst.y=y-up+text_offset_y;
	done=_inst._done[0];
}else{
	instance_destroy();
}