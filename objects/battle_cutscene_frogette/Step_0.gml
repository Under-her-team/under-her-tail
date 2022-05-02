/// @description Check for 
// You can write your code in this editor
if(_flag1){
	_timer+=1;
}


if(!instance_exists(dialog1)){
	_flag1=true;
}

if(_timer==15){
	_cur_frogette=_frogette_2;
	audio_play_sound(snd_spike_disable,0,false);
} else if(_timer==90){
	dialog2=instance_create_depth(_x+100,_y-150,0,battle_dialog_enemy);
	dialog2.text="2nd dialog";
	dialog2.template=0;
	_flag2=true;
}

if(_flag2 && !instance_exists(dialog2)){
	instance_destroy();
}