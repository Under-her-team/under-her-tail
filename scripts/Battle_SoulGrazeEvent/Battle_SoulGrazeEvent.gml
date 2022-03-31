// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SoulGrazeEvent(){
	var TP=argument[0];
	
	battle.tp+=TP;
	if(battle.tp>battle.tp_max) battle.tp=battle.tp_max;
	
	return true;
}