//if (live_call()) return live_result;

battle_bg.image_index=_bg_index;
//菜单


if(_state==BATTLE_STATE.MENU){
	//按钮
	if(_menu==BATTLE_MENU.BUTTON){
		//左/右
		if(Input_IsPressed(INPUT.LEFT)){
			var button=_menu_choice_button;
			button-=1;
			if(button<0){
				button=3;
			}
			audio_play_sound(snd_menu_switch,0,false);
			Battle_SetMenuChoiceButton(button);
		}else if(Input_IsPressed(INPUT.RIGHT)){
			var button=_menu_choice_button;
			button+=1;
			if(button>3){
				button=0;
			}
			audio_play_sound(snd_menu_switch,0,false);
			Battle_SetMenuChoiceButton(button);
		}
		
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			instance_destroy(_dialog[0]);
			instance_destroy(_dialog[1]);
			
			audio_play_sound(snd_menu_confirm,0,false);
			switch(_menu_choice_button){
				case 0:
					Battle_SetMenu(BATTLE_MENU.FIGHT_TARGET);
					break;
				case 1:
					Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
					break;
				case 2:
//					if(Item_GetNumber()>0){
//						Battle_SetMenu(BATTLE_MENU.ITEM);
//					}else{
//						audio_stop_sound(snd_menu_confirm);
//					}
					Battle_SetMenu(BATTLE_MENU.FUN_TARGET);
					break;
				case 3:
					if(Item_GetNumber()>0){
						Battle_SetMenu(BATTLE_MENU.ITEM);
					}else{
						audio_stop_sound(snd_menu_confirm);
					}
//					Battle_SetMenu(BATTLE_MENU.MERCY);
					break;
			}
		}
	}else
	
	//战斗目标
	if(_menu==BATTLE_MENU.FIGHT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}

		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;
		
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			//The original changed the menu to BATTLE_MENU.FIGHT_AIM.
			//I figured putting this here before the offical transition to SEX might be good, but
			//it could maybe just be condensed. with the other lines of code.
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.FUCK);
			//Battle_SetMenu(BATTLE_MENU.FIGHT_AIM);
		}
	}else
	
	//战斗动画
	if(_menu==BATTLE_MENU.FIGHT_ANIM){
		if(_menu_fight_anim_time>0){
			_menu_fight_anim_time-=1;
		}else if(_menu_fight_anim_time==0){
			Battle_EndMenuFightAnim();
		}
	}else
	
	//战斗伤害
	if(_menu==BATTLE_MENU.FIGHT_DAMAGE){
		if(_menu_fight_damage_time>0){
			_menu_fight_damage_time-=1;
		}else if(_menu_fight_damage_time==0){
			Battle_EndMenuFightDamage();
		}
		if(!instance_exists(shaker)){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MONSTER_REAPPEAR);
		}
		
	
	}else
	
	if(_menu==BATTLE_MENU.FUCK){
		//This sets some of the variables then goes to the next state.
		//I'm thinking _sex_flag can be used to indicate whether a FUCK is occuring
		_sex_flag=true;
		_sex_stage=0;
		Battle_SetNextState(BATTLE_STATE.SEX);
		Battle_EndMenu();
	}else
	
	//行动目标
	if(_menu==BATTLE_MENU.ACT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;
		
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.ACT_ACTION);
		}
	}else
	
	//行动内容
	if(_menu==BATTLE_MENU.ACT_ACTION){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var action=_menu_choice_action-2;
			if(action>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var action=_menu_choice_action+2;
			if(action<_enemy_action_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}
		//左/右
		if(Input_IsPressed(INPUT.LEFT)){
			if(_menu_choice_action%2==1){
				var action=_menu_choice_action-1;
				if(action>=0){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceAction(action);
				}
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_menu_choice_action%2==0){
				var action=_menu_choice_action+1;
				if(action<_enemy_action_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceAction(action);
				}
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40+256*(_menu_choice_action%2);
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*floor(_menu_choice_action/2);
		
		//返回/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}else
	
	if(_menu==BATTLE_MENU.FUN_TARGET){
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy;
		
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.FUN_SUBJECT);
		}
	}else
	
	if(_menu==BATTLE_MENU.FUN_SUBJECT){
		if(Input_IsPressed(INPUT.UP)){
			var subject=_menu_choice_fun_subject-2;
			if(subject>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceFunSubject(subject);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var subject=_menu_choice_fun_subject+2;
			if(subject<_enemy_fun_subject_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceFunSubject(subject);
			}
		}
		
		if(Input_IsPressed(INPUT.LEFT)){
			if(_menu_choice_fun_subject%2==1){
				var subject=_menu_choice_fun_subject-1;
				if(subject>=0){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceFunSubject(subject);
				}
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_menu_choice_fun_subject%2==0){
				var subject=_menu_choice_fun_subject+1;
				if(subject<_enemy_fun_subject_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceFunSubject(subject);
				}
			}
		}
		
		battle_soul.x=battle_board.x-battle_board.left-5+40+256*(_menu_choice_fun_subject%2);
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*floor(_menu_choice_fun_subject/2);
		
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.FUN_TARGET);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.FUN_PLAYER);
		}
	}else
	
	if(_menu==BATTLE_MENU.FUN_PLAYER){
		if(Input_IsPressed(INPUT.UP)){
			var player_bit=_menu_choice_fun_player-2;
			if(player_bit>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceFunPlayerBit(player_bit)
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var player_bit=_menu_choice_fun_player+2;
			if(player_bit<_enemy_fun_player_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceFunPlayerBit(player_bit);
			}
		}
		
		if(Input_IsPressed(INPUT.LEFT)){
			if(_menu_choice_fun_player%2==1){
				var player_bit=_menu_choice_fun_player-1;
				if(player_bit>=0){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceFunPlayerBit(player_bit);
				}
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_menu_choice_fun_player%2==0){
				var player_bit=_menu_choice_fun_player+1;
				if(player_bit<_enemy_fun_subject_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
					audio_play_sound(snd_menu_switch,0,false);
					Battle_SetMenuChoiceFunPlayerBit(player_bit);
				}
			}
		}
		
		battle_soul.x=battle_board.x-battle_board.left-5+40+256*(_menu_choice_fun_player%2);
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*floor(_menu_choice_fun_player/2);
		
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.FUN_SUBJECT);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}else
	
	//物品
	if(_menu==BATTLE_MENU.ITEM){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var slot=Battle_GetMenuChoiceItem()-1;
			if(slot>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var slot=Battle_GetMenuChoiceItem()+1;
			if(slot<Item_GetNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
		
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*(Battle_GetMenuChoiceItem()-_menu_choice_item_first);
	}else
	
	//仁慈
	if(_menu==BATTLE_MENU.MERCY){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var mercy=Battle_GetMenuChoiceMercy()-1;
			if(mercy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var mercy=Battle_GetMenuChoiceMercy()+1;
			if((!Battle_IsMenuChoiceMercyOverride()&&mercy<=_menu_mercy_flee_enabled) || (Battle_IsMenuChoiceMercyOverride()&&mercy<Battle_GetMenuChoiceMercyOverrideNumber())){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
		}
		
		//灵魂位置
		battle_soul.x=battle_board.x-battle_board.left-5+40;
		battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy;
		
		//取消/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}
}

//对话
if(_state==BATTLE_STATE.DIALOG){
	if(!instance_exists(_dialog[0])){
		if(!Dialog_IsEmpty()){
			Battle_SetDialog(Dialog_Get()+"{pause}{end}");
		}else{
			if(Battle_IsDialogAutoEnd()){
				Battle_EndDialog();
			}
		}
	}
}

//回合准备
if(_state==BATTLE_STATE.TURN_PREPARATION){
	if(Battle_IsTurnPreparationAutoEnd()){
		if(!instance_exists(battle_dialog_enemy) && !Battle_IsBoardTransforming()){
			Battle_EndTurnPreparation();
		}
	}
}

//回合内
if(_state==BATTLE_STATE.IN_TURN){
	if(_turn_time>0){
		_turn_time-=1;
	}else if(_turn_time==0){
		Battle_EndTurn();
	}
}

//面板重置
if(_state==BATTLE_STATE.BOARD_RESETTING){
	if(!Battle_IsBoardTransforming()){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BOARD_RESETTING_END);
		Battle_GotoNextState();
	}
}

if(_state==BATTLE_STATE.RESULT){
	if(!instance_exists(_dialog[0])){
		if (fader.alpha<1)
			fader.alpha+=0.1;
		else
			Battle_End();
	}
}

//检查战斗结束game
if(_state!=BATTLE_STATE.RESULT && Battle_GetEnemyNumber()==0){
	Battle_SetState(BATTLE_STATE.RESULT);
	Battle_SetNextState(BATTLE_STATE.RESULT);
	Music_Stop(5);
	var text="{define `EXP` "+string(Battle_GetRewardExp())+"}{define `GOLD` "+string(Battle_GetRewardGold())+"}";
	text+=Lang_GetString("battle.result.won");
	Player_SetExp(Player_GetExp()+Battle_GetRewardExp());
	Player_SetGold(Player_GetGold()+Battle_GetRewardGold());
	if(Player_UpdateLv()){
		text+="&"+Lang_GetString("battle.result.lv_up");
		audio_play_sound(snd_level_up,0,false);
	}
	text+="{pause}{end}";
	Battle_SetDialog(text);
}

if(_state==BATTLE_STATE.SEX){
	//This is where the sex animations play.
	
	//This grabs whatever enemy was targetted by the player. Looking at it this morning,
	//maybe the batttle number could be stored as a variable back in BATTLE_MENU.FUCK?
	var menu_choice = Battle_GetMenuChoiceEnemy();
	
	var ENEMY=_enemy[Battle_ConvertMenuChoiceEnemyToEnemySlot(menu_choice)];
	
	//For when it starts.
	if(_sex_stage==0){
		ENEMY.sprite_index=Battle_GetEnemyAnimation(ENEMY,0);//Sets the sprite to the intro
		sex_speed=6;//Having this for later on
		if(ENEMY.image_index > (ENEMY.image_number-1)) _sex_stage=1; 
		//Image index is how far in the animation we are, and image
		//number is the number of frames. It should work like this, but who knows, maybe it can be cleaned up?
	}
	//The player controlled animations. No issues I've noticed here.
	else if(_sex_stage==1){
		ENEMY.sprite_index=Battle_GetEnemyAnimation(ENEMY,1);
		sex_speed=6;
		if(Input_IsPressed(INPUT.RIGHT)) _sex_stage=2;
	}
	else if(_sex_stage==2){
		ENEMY.sprite_index=Battle_GetEnemyAnimation(ENEMY,1);
		sex_speed=10;
		if(Input_IsPressed(INPUT.RIGHT)) _sex_stage=3;
		else if(Input_IsPressed(INPUT.LEFT)) _sex_stage=1;
	}
	else if(_sex_stage==3){
		ENEMY.sprite_index=Battle_GetEnemyAnimation(ENEMY,1);
		sex_speed=14;
		if(Input_IsPressed(INPUT.LEFT)) _sex_stage=2;
		else if(Input_IsPressed(INPUT.RIGHT)) _sex_stage=4;
	}
	//The sprite for ending the animation. No problems I noticed here.
	else if(_sex_stage==4){
		ENEMY.sprite_index=Battle_GetEnemyAnimation(ENEMY,2);
		sex_speed=14;
	}
	//This sets the speed. It's probably only important for the loops, but I figured having it
	//out here wouldn't hurt.
	sprite_set_speed(ENEMY.sprite_index, sex_speed, spritespeed_framespersecond);
	//This causes the transition back to MENU. This will probably change later to better fit the design.
	//It follows similar logic as the intro.
	if((ENEMY.image_index > (ENEMY.image_number-1)) && _sex_stage==4) {
			ENEMY.sprite_index=ENEMY.idle_poses[ENEMY.idle_value];
			Battle_GotoNextState();
		}
}