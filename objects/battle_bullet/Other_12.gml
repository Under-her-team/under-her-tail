/// @description Soul Graze
// You can write your code in this editor
if(!_grazed){
	_grazed=true;
	Battle_SoulGrazeEvent(_tp_value);
}
else{
	Battle_SoulGrazeEvent(_tp_value/room_speed);
}