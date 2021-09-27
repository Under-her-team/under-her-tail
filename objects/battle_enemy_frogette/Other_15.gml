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
				if(book && _bonus_arousal_off[3]==false) {
					text="* You flirted well.";
					_arousal+=34;
					_bonus_arousal_off[3]=true;
				}
				else {
					text="* You flirted.";
					_arousal+=17;
				}
				break;
			case 2:
				if(book && _bonus_arousal_off[2]==false) {
					text="* You pose well.";
					_arousal+=34;
					_bonus_arousal_off[2]=true;
				}
				else {
					text="* You pose.";
					_arousal+=17;
				}
				break;
		}
		Dialog_Add(text);
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		switch(Battle_GetMenuChoiceFunSubject()){
			case 0:
				switch(Battle_GetMenuChoiceFunPlayerBit()){
					case 0:
						if(_bonus_arousal_off[1]==false){
							text = "* You touched a titty.&  She liked it!";
							_arousal+=34;
							_bonus_arousal_off[1]=true;
						}
						else {
							text = "* You touched a titty.&  She's bored.";
							_arousal+=17;
						}
						break
					case 1:
						text = "* You sucked a titty.";
						_arousal+=17;
						break
				}
				break;
			case 1:
				switch(Battle_GetMenuChoiceFunPlayerBit()){
					case 0:
						text = "* You touched a butt.";
						_arousal+=17;
						break
					case 1:
						if(_bonus_arousal_off[0]==false){
							text = "* You licked a butt. Yum.";
							_arousal+=34;
							_bonus_arousal_off[0]=true;
						}
						else {
							text = "* You licked a butt. Disgusting.";
							_arousal+=17;	
						}
						break
				}
				break;
		}
		Dialog_Add(text);
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ITEM:
		if(Battle_GetMenuItemUsedLast()==item_history_book) _arousal+=34;
}