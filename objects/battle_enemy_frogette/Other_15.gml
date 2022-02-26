/// @description Menu End
// You can write your code in this editor

// Inherit the parent event

var text = "";
var menu_choice_action = -1; //Store in case of reset

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		menu_choice_action=Battle_GetMenuChoiceAction();
		if(!_check_out_change){
			switch(menu_choice_action){
				case 0:
					text = "* Frogette - ATK 3 END 2&* Croaks for no reason.";
					Battle_SetEnemyActionNumber(_enemy_slot,5);
					Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out");
					Battle_SetEnemyActionName(_enemy_slot,1,"* Listen");
					Battle_SetEnemyActionName(_enemy_slot,2,"* Geek Out");


					Battle_SetEnemyActionName(_enemy_slot,3,"* Remove");
					Battle_SetEnemyActionName(_enemy_slot,4,"* Test Fuck");
					_check_out_change=true;
					break;
				case 1:
					text = "* You listen.";
					if(!_listen)  _soul_value=0;
					break;
				case 2:
					text = "* Bye Frogette.";
					audio_play_sound(snd_vaporize,0,false);
					image_alpha=0.5;
					repeat(12)
						instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
					Battle_RemoveEnemy(_enemy_slot);
					break;
				case 3: 
					Battle_SetNextState(BATTLE_STATE.SEX);
					_current_sex_animation=0;
					break;
			}
		}
		else{
			//Standard ACT responses
			switch(menu_choice_action){
				case 0:
					text = "* Frogette - ATK 3 END 2&* Croaks for no reason.";
					break;
				case 1:
					text = "* You listen.";
					if(!_listen)  _soul_value=0;
					break;
				case 2:
					text = "* You geek out.";
					if(!_geek_out) _soul_value=1;
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
					Battle_SetNextState(BATTLE_STATE.SEX);
					break;
			}
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.FUN:
		//WIP FUN
		text = "* You had fun with Frogette.";
		_mindblow_percent+=50;
		if(_mindblow_percent==100) {
			Battle_SetEnemyMindblown(true);
		}
		break;
	case BATTLE_MENU_CHOICE_BUTTON.ITEM:
		if(Battle_GetMenuItemUsedLast()==item_history_book){
			text= "* Frogette was excited to see the book!";
			if(!_book) _soul_value=2;
		}
		break;
	
}

if(text!=""){
	Dialog_Add(text);
}
if(_mindblow_percent>100) _mindblow_percent=100;