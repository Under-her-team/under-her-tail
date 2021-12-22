/// @description Animating Sprites
// You can write your code in this editor
if (live_call()) return live_result;

switch(_state){
	case BATTLE_ENEMY_STATE.SEX:
		switch(_animation_stage){
			case 0:
				//Count the time for the transition. If it's under 20, change it.
				if(_transition_count<=20.0) {
					_transition_count+=1.0;
					
					//Change how the sprites look. 
					if(_transition_count<10.0) _shader_scale=_transition_count;
					else if(_transition_count<20.0 && _transition_count>=10.0) {
						_shader_scale=20.0-_transition_count;
						if(_fuck_or_fun==0){
							sprite_index=_sex_animations[_END-1,0];
						} else if(_fuck_or_fun==1) {
							sprite_index=_fun_animations[_fun_value];
						}
						image_speed=0;
					}
				}
				//Otherwise change to the sex animations
				else {
					_shader_scale=0.0;
					if(_fuck_or_fun==0) _animation_stage=1;
					else _animation_stage=2;
				}
				break;
			case 1:
				image_speed=1;
				sprite_index=_sex_animations[_END-1,0];
				if(image_index > (image_number-1)) _animation_stage = 2;
				break;
			case 2:
				if(_fuck_or_fun==0){
					sprite_index=_sex_animations[_END-1,1];
				} else if(_fuck_or_fun==1) {
					sprite_index=_fun_animations[_fun_value];
				}
				sprite_set_speed(sprite_index, 6, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=3;
				break;
			case 3:
				sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=4;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=2;
				break;
			case 4:
				sprite_set_speed(sprite_index, 14, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT) && _fuck_or_fun==0) _animation_stage=5;
				else if(Input_IsPressed(INPUT.RIGHT) && _fuck_or_fun==1) {
					_state=BATTLE_ENEMY_STATE.IDLE;
					Battle_SetSexState(BATTLE_SEX_STATE.NONE);
					Battle_ReleaseSex();
				}
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=3;
				break;
			case 5: 
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
				if(_transition_count<=20.0) {
					_transition_count+=1.0;
					
					//Change how the sprites look. 
					if(_transition_count<10.0) _shader_scale=_transition_count;
					else if(_transition_count<20.0 && _transition_count>=10.0) {
						_shader_scale=20.0-_transition_count;
						sprite_index=_mindblow_start;
						image_speed=0;
					}
				}
				//Otherwise change to the sex animations
				else {
					_shader_scale=0.0;
					_animation_stage=1;
				}
			
				break;
			case 1:
				image_speed=1;
				sprite_index=_mindblow_start;
				if(image_index > (image_number-1)) _animation_stage = 2;
				break;
				
			case 2:
				sprite_index=_mindblow_animations[_mindblow_stage,0];
				sprite_set_speed(sprite_index, 6, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=3;
				break;
			case 3:
				sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=4;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=2;
				break;
			case 4:
				sprite_index=_mindblow_animations[_mindblow_stage,0];
				sprite_set_speed(sprite_index, 14, spritespeed_framespersecond);
				if(Input_IsPressed(INPUT.RIGHT)) _animation_stage=5;
				else if(Input_IsPressed(INPUT.LEFT)) _animation_stage=3;
				break;
			case 5: 
				sprite_index=_mindblow_animations[_mindblow_stage,1];
				if((image_index > (image_number-1)) && _mindblow_stage<2) {
					_animation_stage=4;
					_mindblow_stage+=1;
				}
				else if((image_index > (image_number-1))) {
					image_speed=0;
					_state=BATTLE_ENEMY_STATE.MINDBLOW_AFTER;
					Battle_SetSexState(BATTLE_SEX_STATE.NONE);
					Battle_ReleaseSex();
					audio_play_sound(snd_vaporize,0,false);
					image_alpha=0.5;
					repeat(12)
						instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_spare_particle);
				}
				break;
		}
		break;
	case BATTLE_ENEMY_STATE.MINDBLOW_AFTER:
		break;
	default:
		sprite_index=_sprite_normal;
		break;
}