/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(battle_has_occured==0){
	Dialog_Add("{char_link 1}* This starts an encounter!");
	Dialog_Start();
	ready_to_battle=1;
}
else{
	if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT)==1) Dialog_Add("{char_link 1}* Very pleased end.");
	else if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT)==2) Dialog_Add("{char_link 1}* Mindblown end.");
	else  Dialog_Add("{char_link 1}* Pleased end.");
	
	Dialog_Start();
}
