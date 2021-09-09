/// @description Creating prototype frogette
// You can write your code in this editor

// Inherit the parent event
event_inherited();
char_id=1;

dir_locked=true;

res_idle_sprite[DIR.DOWN]=spr_frogette;
res_talk_sprite[DIR.DOWN]=spr_frogette;
res_talk_image[DIR.DOWN]=1;
res_talk_speed[DIR.DOWN]=3;

ready_to_battle = 0
battle_has_occured = 0 //This can be used to differentiate before and after. 
mindblown=false;