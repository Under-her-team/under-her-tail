if (live_call()) return live_result;

/// @description Turn Preparation Start
// You can write your code in this editor
//Prepare the attack
//As well as dialogue

var dialog_text="";

if(start_dialogue){
	instance_create_depth(0,0,DEPTH_BATTLE.ENEMY,battle_cutscene_frogette);
	start_dialogue=false;
}
else{
	if(_soul_value==0){
		dialog_text="Spin Dialog";
		instance_create_depth(0,0,0,battle_turn_fliesAndSpin_turnedOn);
	}
	else if(_soul_value==1){
		dialog_text="Fly Dialog";
		instance_create_depth(0,0,0,battle_turn_flies_turnedOn);
	}
	else if(_soul_value==2){
		dialog_text="Turret Dialog";
		instance_create_depth(0,0,0,battle_turn_turret_turnedOn);
	}
	else {
		dialog_text="Test Dialog";
		instance_create_depth(0,0,0,battle_turn_turret);
	}

	//Say something
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text=dialog_text;
	inst.template=0;
}

