// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Mindblow_Check(){
	
	
	return (battle._enemy_threshold[2]==battle._enemy_mindblow_points[2] && battle._enemy_threshold[1]==battle._enemy_mindblow_points[1] && battle._enemy_threshold[0]==battle._enemy_mindblow_points[0]);
}