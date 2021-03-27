event_inherited();

char_id=0;

res_idle_sprite[DIR.UP]=spr_char_human_up;
res_idle_sprite[DIR.DOWN]=spr_char_human_down;
res_idle_sprite[DIR.LEFT]=spr_char_human_right;
res_idle_sprite[DIR.RIGHT]=spr_char_human_right;
res_move_sprite[DIR.UP]=spr_char_human_up;
res_move_sprite[DIR.DOWN]=spr_char_human_down;
res_move_sprite[DIR.LEFT]=spr_char_human_right;
res_move_sprite[DIR.RIGHT]=spr_char_human_right;

moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;