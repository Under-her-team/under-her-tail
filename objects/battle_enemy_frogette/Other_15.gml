/// @description Menu End
// You can write your code in this editor

// Inherit the parent event

var text = "";

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				text = "* Frogette - ATK 3 END 2&* Croaks for no reason.";
				break;
			case 1:
				text = "* You geek out.";
				if(_turn_on_geek_out) {
					turned_on_counter++;
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
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		text = "* You had fun with Frogette.";
		if(_turn_on_listen==1){
			_turn_on_listen=-1;
			turned_on_counter++;
		}
		break;

}

Dialog_Add(text);
