/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var FROGETTE_FLAG = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT);

if(battle_has_occured==0 && FROGETTE_FLAG==-1){
	Dialog_Add("{char_link 1}* This starts an encounter!");
	Dialog_Start();
	ready_to_battle=1;
}
else{
	if(FROGETTE_FLAG==0) Dialog_Add("{char_link 1}* Pleased end.");
	else Dialog_Add("{char_link 1}* Mindblown end.");
	
	//if (FROGETTE_FLAG==1)
	
	Dialog_Start();
}
