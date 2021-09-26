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
				if(_book) text="* You flirted well."
				else text="* You flirted."
				break;
			case 2:
				if(_book) text="* You pose well."
				else text="* You pose."
				break;
		}
		Dialog_Add(text);
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		switch(Battle_GetMenuChoiceFunSubject()){
			case 0:
				switch(Battle_GetMenuChoiceFunPlayerBit()){
					case 0:
						text = "* You touched a titty.";
						break
					case 1:
						text = "* You sucked a titty.";
						break
				}
				break;
			case 1:
				switch(Battle_GetMenuChoiceFunPlayerBit()){
					case 0:
						text = "* You touched a butt.";
						break
					case 1:
						text = "* You licked a butt. Disgusting.";
						break
				}
				break;
		}
		Dialog_Add(text);
		break;
}