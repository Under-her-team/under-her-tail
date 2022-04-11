// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_UseTP(){
	var TP_Cost = 2.5*argument[0];
	if(TP_Cost==0) return true;
	
	if(battle.tp>=TP_Cost){
		battle.tp-=TP_Cost;
		if(battle.tp<0) battle.tp=0;
		return true;
	}
	else return false;
}