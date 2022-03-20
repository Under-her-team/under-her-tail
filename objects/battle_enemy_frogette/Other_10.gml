/// @description Init
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Battle_SetEnemyName(_enemy_slot,"* Frogette");

//default stats
_true_soul_count=0;//Lists the number of souls collected
_true_soul_pleased=2;//Lists the number of souls needed to please

_WP_Max=54; //The amount of damage needed to mindblow
_WP=0; //The current amount of damage

Battle_SetEnemyEND(2);

//Set Actions
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check Out");
Battle_SetEnemyActionName(_enemy_slot,1,"* Listen");


//Animation stage variable. Used to say where the animation is. 
//-1 = unused. 0 = transition 1 = start. 2:4 = intermediate stages. 5 = end
_animation_stage = -1;

//Transition Count - Used to count for how far in the transition it is. Float number
_transition_count = 0.0;
_shader_scale = 0.0;
_uni_transitCount = shader_get_uniform(Pink_Transition_Color,"time");

//Mindblow stage - What part of the mindblow animation to be in.
_mindblow_stage = 0;

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
_sex_animations[1,2]=spr_frogette_cowgirl_climax_alt;
_sex_animations[1,1]=spr_frogette_cowgirl_loop
_sex_animations[1,0]=spr_frogette_cowgirl_start;

_sex_animations[0,2]=spr_frogette_cowgirl_climax;
_sex_animations[0,1]=spr_frogette_cowgirl_loop;
_sex_animations[0,0]=spr_frogette_cowgirl_start;

//Sex sound timing according to a given frame
_sex_timing[1,2]=1;
_sex_timing[1,1]=3;
_sex_timing[1,0]=0;

_sex_timing[0,2]=12;
_sex_timing[0,1]=3;
_sex_timing[0,0]=0;

_play_sex_sound[2]=true;
_play_sex_sound[1]=true;
_play_sex_sound[0]=true;

_sex_sound_check=-1;

//FUN Animation
_fun_animation=spr_frogette_fake_fun;


//Variables for bar showing up during animation
_bar_damage=0; //How much damage
_bar_wp_max=_WP_Max; //Max WP
_bar_wp_orig=0; //The WP before the damage
_bar_wp_target=0; //The WP after the damage

_fun_bar_trigger_frame=Battle_DamageBarAppear(_fun_animation); //The frame in which the bar triggers during FUN


//Number of animations. 

_sex_animation_count=1;
_current_sex_animation=0;

//Sex Dialog
_sex_dialog=noone; //The dialogue itself
_sex_dialog_timer=150; 


//ACT based attack trigger
_soul_value=-1;
soul_success=false;

//Check Out Change
_check_out_change=false;

//ACT triggers
_listen=false;
_geek_out=false;
_book=false;

//A variable used to guage the dialogue reaction of frogette
//The value signals the exact type. 
_dialogue_reaction=-1;