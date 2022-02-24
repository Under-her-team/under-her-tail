/// @description Board Resetting End
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(soul_success){
	switch(_soul_value){
		case 0: 
			_listen=true;
		break;
		case 1:
			_geek_out=true;
		break;
		case 2:
			_book=true;
		break;
	}
	_true_soul_count+=1;
	soul_success=false;
	
	if(_true_soul_count==_true_soul_pleased) Battle_SetEnemyPleased(true);
}


_sex_dialog_timer=150; 
_dialogue_reaction=-1;
_soul_value=-1;