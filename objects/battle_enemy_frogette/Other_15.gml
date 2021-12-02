/// @description Menu End
// You can write your code in this editor

// Inherit the parent event

var text = "";
var menu_choice_action = -1; //Store in case of reset

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		menu_choice_action=Battle_GetMenuChoiceAction();
		//In case of Mindblow resets
		if(menu_choice_action>0 && _mindblow_percent==100 && !_reset_mindblow) {
			_reset_mindblow=true;
			text = "* Frogette seems to be in a euphoric trance.& She doesn't respond."
		}
		else if (menu_choice_action>0 && _mindblow_percent==100 && _reset_mindblow) {
			_reset_mindblow=false;
			_mindblow_percent=0;
			text = "* Frogette snaps out of it!";
		}
		else {
			//Standard ACT responses
			switch(menu_choice_action){
				case 0:
					text = "* Frogette - ATK 3 END 2&* Croaks for no reason.";
					break;
				case 1:
					text = "* You geek out.";
					if(_turn_on_geek_out) {
						Battle_IncreaseTurnedOn(_enemy_slot);
						_turn_on_geek_out=false;
					}
					if(_turn_on_listen>0){
						_turn_on_listen=0;
						text+=" She seems to have& forgot about the previous topic.";
					}
					break;
				case 2:
					text = "* You listen.";
					if(_turn_on_listen==0){
						_turn_on_listen=1;
					}	
					break;
			}
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		if(_reset_mindblow) _reset_mindblow=false; //disable reset
		//WIP FUN
		text = "* You had fun with Frogette.";
		if(_turn_on_listen==1){
			_turn_on_listen=-1;
			Battle_IncreaseTurnedOn(_enemy_slot);
		}
		_monster_fun_flag=true;
		_mindblow_percent+=50;
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		if(_reset_mindblow) _reset_mindblow=false; //disable reset
		break;

}

Dialog_Add(text);
if(_mindblow_percent>100) _mindblow_percent=100;
Battle_SetMindblowPercent(_enemy_slot,_mindblow_percent);