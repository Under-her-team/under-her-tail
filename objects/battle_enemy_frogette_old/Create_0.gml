/// @description Added Sprites
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Sprites when not in sex
_idle_poses[0]=spr_frogette_battle_1; //No mindblow percent

_idle_value=0;

//Mindblow
_sex_animations[2,2]=spr_frogette_cowgirl_fake_end;
_sex_animations[2,1]=spr_frogette_cowgirl;
_sex_animations[2,0]=spr_frogette_cowgirl_start;

//Standard Sex
_sex_animations[1,2]=spr_frogette_cowgirl_fake_end;
_sex_animations[1,1]=spr_frogette_cowgirl;
_sex_animations[1,0]=spr_frogette_cowgirl_start;

_sex_animations[0,2]=spr_frogette_cowgirl_fake_end;
_sex_animations[0,1]=spr_frogette_cowgirl;
_sex_animations[0,0]=spr_frogette_cowgirl_start;


//Fade out/fade in stuff
//The first two are checks for when it's happening
_fade_out=false
_fade_in=false;