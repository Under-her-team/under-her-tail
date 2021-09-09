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
	if(mindblown==false){
		Dialog_Add("{char_link 1}* Pleased/very pleased end.");
		Dialog_Start();
	}
	else{
		Dialog_Add("{char_link 1}* Mindblown end.");
		Dialog_Start();
	}
}
