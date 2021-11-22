
/// @description Turn Preparation Start
// You can write your code in this editor
//Prepare the attack
if(Battle_GetSexFlag()){
	if(Battle_GetTurnedOn(_enemy_slot)>0) instance_create_depth(0,0,0,battle_turn_simple_frogette);
	else instance_create_depth(0,0,0,battle_turn_simple_frogette_nonTurnedOn);
}
else {
	instance_create_depth(0,0,0,battle_turn_simple);
	//Say something
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="TEST DIALOG";
	inst.template=0;
}

