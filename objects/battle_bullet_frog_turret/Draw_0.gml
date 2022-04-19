/// @description Draw Frog
// You can write your code in this editor

surface_set_target(Battle_GetBoardSurface());
draw_circle(x,y,25,true);
draw_sprite_ext(spr_bullet_frog_tonguestrip,0,x,y,1,_tongue_length,_angle,c_white,1);
draw_sprite_ext(spr_bullet_frog_tonguetip,0,x+_tip_x,y+_tip_y,1,1,_angle,c_white,1);
draw_sprite_ext(spr_bullet_frog,_tongue,x,y,1,1,_angle,c_white,1);
surface_reset_target();

draw_circle(x,y,25,true);
draw_sprite_ext(spr_bullet_frog_tonguestrip,0,x,y,1,_tongue_length,_angle,c_white,1);
draw_sprite_ext(spr_bullet_frog_tonguetip,0,x+_tip_x,y+_tip_y,1,1,_angle,c_white,1);
draw_sprite_ext(spr_bullet_frog,_tongue,x,y,1,1,_angle,c_white,1);