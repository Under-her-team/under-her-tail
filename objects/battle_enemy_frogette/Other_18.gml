
/// @description Turn Preparation Start
// You can write your code in this editor
//Prepare the attack
//As well as dialogue

var dialog_text="";


if(Battle_GetSexFlag()){
	if(Battle_GetTurnedOn(_enemy_slot)>0) instance_create_depth(0,0,0,battle_turn_simple_frogette);
	else instance_create_depth(0,0,0,battle_turn_simple_frogette_nonTurnedOn);
}
else {
	switch(_dialogue_reaction){
		case 0: 
			dialog_text="Check reaction";
			break;
		case 1: 
			dialog_text="Geek out reaction 1";
			break;
		case 2: 
			dialog_text="Geek out reaction 2";
			break;
		case 3: 
			dialog_text="Listen reaction 1";
			break;
		case 4: 
			dialog_text="Listen reaction 2";
			break;
		case 5: 
			dialog_text="Book reaction 1";
			break;
		case 6: 
			dialog_text="Book reaction 2";
			break;
		default: dialog_text="TEST DIALOG";
	}
	
	instance_create_depth(0,0,0,battle_turn_simple);
	//Say something
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text=dialog_text;
	inst.template=0;
}

