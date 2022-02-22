
/// @description Turn Preparation Start
// You can write your code in this editor
//Prepare the attack
//As well as dialogue

var dialog_text="";

dialog_text="Test Dialog";
	
instance_create_depth(0,0,0,battle_turn_simple);
//Say something
var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text=dialog_text;
inst.template=0;


