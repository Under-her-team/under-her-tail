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
				break;
			case 2:
				text = "* You listen.";
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		text = "* You had fun with Frogette.";
		break;

}

Dialog_Add(text);
