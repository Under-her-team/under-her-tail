/// @description Sex
// You can write your code in this editor
if (live_call()) return live_result;

var sex_stage = Battle_GetSexState();
Dialog_Add("TEST MESSAGE");

//Set if this is Mindblow or normal sex
if(_END==0) {
	_state=BATTLE_ENEMY_STATE.MINDBLOW; //This should only come up if the sex event is called at 0
//endurance. That should really only happen if we're in the mindblow battle statte
	image_alpha=1;
	sex_stage= BATTLE_SEX_STATE.FUCK;
}
else _state=BATTLE_ENEMY_STATE.SEX; 



Battle_HoldSex();
instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_sex_transition_effect);

_transition_count=0.0;
_animation_stage = 0;


//Set what set of animations to use
switch(sex_stage) {
	case BATTLE_SEX_STATE.FUCK:
		_fuck_or_fun = 0;
		//Determine if mindblow points or satisfaction increases.
		if(_mindblow_percent==100) Battle_IncreaseMindblowPoints(_enemy_slot);
		else if(Battle_HeartCheck()) {
			Battle_IncreaseSatisfaction(_enemy_slot);
			Battle_DecreaseTurnedOn(_enemy_slot);
		}
		break;
	case BATTLE_SEX_STATE.FUN:
		_fuck_or_fun = 1;
		_mindblow_percent+=50;
		break;
	default: 
		_fuck_or_fun = -1;
		_animation_stage = -1;
		break;
}