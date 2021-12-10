/// @description Animating Sprites
// You can write your code in this editor
if (live_call()) return live_result;

switch(_state){
	case BATTLE_ENEMY_STATE.SEX:
		switch(_animation_stage){
			case 0:
				sprite_index=_sex_animations[_END-1,0];
				if(image_index > (image_number-1)) _animation_stage = 1;
				break;
			case 1:
				if(_fuck_or_fun==0){
					sprite_index=_sex_animations[_END-1,1];
				} else if(_fuck_or_fun==1) {
					sprite_index=_fun_animations[_fun_value];
				}
				sprite_set_speed(sprite_index, 6, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=2;
				break;
			case 2:
				sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=3;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=1;
				break;
			case 3:
				sprite_set_speed(sprite_index, 14, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT) && _fuck_or_fun==0) _animation_stage=4;
				else if(Input_IsPressed(INPUT.RIGHT) && _fuck_or_fun==1) {
					_state=BATTLE_ENEMY_STATE.IDLE;
					Battle_SetSexState(BATTLE_SEX_STATE.NONE);
					Battle_ReleaseSex();
				}
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=2;
				break;
			case 4: 
				sprite_index=_sex_animations[_END-1,2];
				if(image_index > (image_number-1)) {
					_state=BATTLE_ENEMY_STATE.IDLE;
					Battle_SetSexState(BATTLE_SEX_STATE.NONE);
					_decrease_endurance=true;
					Battle_ReleaseSex();
				}
				break;
		}
		break;
	case BATTLE_ENEMY_STATE.MINDBLOW:
		switch(_animation_stage){
			case 0:
				sprite_index=_mindblow_start;
				if(image_index > (image_number-1)) _animation_stage = 1;
				break;
			case 1:
				sprite_index=_mindblow_animations[_mindblow_stage,0];
				sprite_set_speed(sprite_index, 6, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=2;
				break;
			case 2:
				sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=3;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=1;
				break;
			case 3:
				sprite_index=_mindblow_animations[_mindblow_stage,0];
				sprite_set_speed(sprite_index, 14, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=4;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=2;
				break;
			case 4: 
				sprite_index=_mindblow_animations[_mindblow_stage,1];
				if((image_index > (image_number-1)) && _mindblow_stage<2) {
					_animation_stage=3;
					_mindblow_stage+=1;
				}
				else if((image_index > (image_number-1))) {
					_state=BATTLE_ENEMY_STATE.IDLE;
					Battle_SetSexState(BATTLE_SEX_STATE.NONE);
					Battle_ReleaseSex();
				}
				break;
		}
		break;
	default:
		sprite_index=_sprite_normal;
		break;
}