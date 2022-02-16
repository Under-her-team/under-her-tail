/// @description Menu End
// You can write your code in this editor

// Inherit the parent event

var text = "";
var menu_choice_action = -1; //Store in case of reset

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		menu_choice_action=Battle_GetMenuChoiceAction();
		//Standard ACT responses
		switch(menu_choice_action){
			case 0:
				text = "* Frogette - ATK 3 END 2&* Croaks for no reason.";
				_dialogue_reaction=0;
				break;
			case 1:
				text = "* You geek out.";
				if(_turn_on_geek_out) {
					Battle_IncreaseTurnedOn(_enemy_slot);
					_turn_on_geek_out=false;
					_dialogue_reaction=1;
				}
				else _dialogue_reaction=2;
				if(_turn_on_listen>0){
					_turn_on_listen=0;
					text+=" She seems to have& forgot about the previous topic.";
				}
				break;
			case 2:
				text = "* You listen.";
				if(_turn_on_listen==0){
					_turn_on_listen=1;
					_dialogue_reaction=3;
				}
				else _dialogue_reaction=4;
				break;
			case 3:
				text = "* Bye Frogette.";
				audio_play_sound(snd_vaporize,0,false);
				image_alpha=0.5;
				repeat(12)
					instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
				Battle_RemoveEnemy(_enemy_slot);
				break;
			case 4:
				Battle_SetSexState(BATTLE_SEX_STATE.FUCK); 
				Battle_SetNextState(BATTLE_STATE.SEX);
				_current_sex_animation=0;
				break;
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		//WIP FUN
		text = "* You had fun with Frogette.";
		_mindblow_percent+=50;
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		if(_reset_mindblow) _reset_mindblow=false; //disable reset
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ITEM:
		if(Battle_GetMenuItemUsedLast()==item_history_book){
			if(_turn_on_book){
				text= "* Frogette was excited to see the book!"
				_turn_on_book=false;
				Battle_IncreaseTurnedOn(_enemy_slot);
				_dialogue_reaction=5;
			}
			else {
				text="* Frogette smiled at seeing the book again."
				_dialogue_reaction=6;
			}
		}
		break;

}
if(text!=""){
	Dialog_Add(text);
}
if(_mindblow_percent>100) _mindblow_percent=100;
Battle_SetMindblowPercent(_enemy_slot,_mindblow_percent);