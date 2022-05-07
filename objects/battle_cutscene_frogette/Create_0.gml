/// @description Setup
// You can write your code in this editor

_frogette_1=spr_frogette_battle_1;
_frogette_2=spr_frogette_battle_2;
_cur_frogette=_frogette_1;

_x=battle_enemy_frogette.x;
_y=battle_enemy_frogette.y;

battle_enemy_frogette.image_alpha=0;
battle_board.visible=false;
battle_soul.image_alpha=0;


dialog1=instance_create_depth(_x+100,_y-150,0,battle_dialog_enemy);
dialog1.text="So! Why don’t you come&over here, and...";
dialog1.template=0;

dialog2=noone;

_timer=0;
_flag1=false;
_flag2=false;
