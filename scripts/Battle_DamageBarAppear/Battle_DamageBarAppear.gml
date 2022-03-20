// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_DamageBarAppear(){
	//Determines when the damage bar should apppear
	var animation = argument[0];
	var animation_fps = sprite_get_speed(animation);  //frames/second
	var animation_frames = sprite_get_number(animation); //Frames in the animation
	
	var display_time= (room_speed*1.75)+1;
	
	var frames_for_bar=display_time*(animation_fps/60);
	
	return floor(animation_frames-frames_for_bar);
}