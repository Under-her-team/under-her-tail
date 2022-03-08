// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_GetLvlAp(){
	var LV=argument[0];

	var result=-1;

	result=(LV-1)*2;

	return result;
}