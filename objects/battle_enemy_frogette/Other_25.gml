/// @description Sex
// You can write your code in this editor
//if (live_call()) return live_result;

Dialog_Add("TEST MESSAGE");

 _state=BATTLE_ENEMY_STATE.SEX; 



Battle_HoldSex();
//instance_create_depth(x,y-(sprite_width/2),DEPTH_BATTLE.UI_HIGH,battle_sex_transition_effect);

_transition_count=0.0;
_animation_stage = 0;
_current_sex_animation=0;

//Battle_SetMindblowPercent(_enemy_slot,_mindblow_percent);