/// @description Sex Dialogue
// You can write your code in this editor

if (live_call()) return live_result;

if(!instance_exists(_sex_dialog)){
	_sex_dialog=instance_create_depth(0,0,0,battle_sex_dialog_setup);
	_sex_dialog.text0="message 0";
	_sex_dialog.text1="message 1";
	_sex_dialog.time_delay=150;
	_sex_dialog.template0=1;
	_sex_dialog.template1=4;
	_sex_dialog.box_0_x=x-100;
	_sex_dialog.box_0_y=y-150;
	_sex_dialog.box_1_x=x+100;
	_sex_dialog.box_1_y=y-150;
	_sex_dialog_timer=180; 
}