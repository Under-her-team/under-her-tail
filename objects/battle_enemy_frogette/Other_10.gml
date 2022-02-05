/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

Battle_SetEnemyThreshold(_enemy_slot,2);

//default stats
_END = 2;
_mindblow_percent=0;
Battle_SetMindblowPercent(_enemy_slot,_mindblow_percent);

//Set Actions
Battle_SetEnemyActionNumber(_enemy_slot,4);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out")
Battle_SetEnemyActionName(_enemy_slot,1,"* Geek Out");
Battle_SetEnemyActionName(_enemy_slot,2,"* Listen");


Battle_SetEnemyActionName(_enemy_slot,3,"* Remove");

//Current fun value for which FUN is to occur. Used as a counter
_fun_value = 0;

//Max fun value. Used to signify how many funs there are max.
_fun_max = 2;

//FUCK or FUN flag. Essentially used to communicate which is used. 0 is FUCK, 1 is FUN, -1 is undefined
_fuck_or_fun = -1;

//Animation stage variable. Used to say where the animation is. 
//-1 = unused. 0 = transition 1 = start. 2:4 = intermediate stages. 5 = end
_animation_stage = -1;

//Transition Count - Used to count for how far in the transition it is. Float number
_transition_count = 0.0;
_shader_scale = 0.0;
_uni_transitCount = shader_get_uniform(Pink_Transition_Color,"time");

//Mindblow stage - What part of the mindblow animation to be in.
_mindblow_stage = 0;

//Reset Mindblow - If Act Occurs twice at 100% Mindblow, allow it to rest. 
//False says it's not ready to reset. True means it is. It's set to true when ACT is used at 100%
//If true and ACT is selected again, it resets Mindblow percent. Will become false regardless. 
_reset_mindblow=false;

//Decrease Endurance - Flag to decrease endurance after sex
_decrease_endurance=false;

//Sprites
_sprite_normal=sprite_index

//Mindblow animations
_mindblow_animations[2,1]=spr_frogette_cowgirl_fake_end_mindblow_3;
_mindblow_animations[2,0]=spr_frogette_cowgirl_mindblow_3;
_mindblow_animations[1,1]=spr_frogette_cowgirl_fake_end_mindblow_2;
_mindblow_animations[1,0]=spr_frogette_cowgirl_mindblow_2;
_mindblow_animations[0,1]=spr_frogette_cowgirl_fake_end_mindblow_1;
_mindblow_animations[0,0]=spr_frogette_cowgirl_mindblow_1;
_mindblow_start=spr_frogette_cowgirl_start_mindblow;

//Standard Sex
_sex_animations[1,2]=spr_frogette_cowgirl_fake_end;
_sex_animations[1,1]=spr_frogette_cowgirl;
_sex_animations[1,0]=spr_frogette_cowgirl_start;

_sex_animations[0,2]=spr_frogette_cowgirl_fake_end;
_sex_animations[0,1]=spr_frogette_cowgirl;
_sex_animations[0,0]=spr_frogette_cowgirl_start;

//Fun Animations
_fun_animations[1]=spr_frogette_cowgirl;
_fun_animations[0]=spr_frogette_cowgirl;

//Sex Dialog
_sex_dialog=noone; //The dialogue itself
_sex_dialog_timer=150; 


//For Frogette specifically
//Variables that keep track of what turn on sequences are available. 
//Listen is part of a sequence, so it's a number. If it's interrupted, it's
//set back to 0, and reset. If it's completed, it's -1, showing it's no longer available
//The other two need only one thing done to activated their turn ons. If it's
//true, it can still be done. If not, it's be achieved.
_turn_on_listen = 0;
_turn_on_geek_out = true;
_turn_on_book = true;


//A variable used to guage the dialogue reaction of frogette
//The value signals the exact type. 
_dialogue_reaction=-1;