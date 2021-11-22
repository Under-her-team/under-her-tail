// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Sexcess(){
	var heart = argument[0];
	var enemy_choice = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy());
	
	if (Battle_GetMindblowPercent(enemy_choice)==100) Battle_IncreaseMindblowPoints(enemy_choice);
	else if(heart) Battle_IncreaseSatisfaction(enemy_choice);
	
	//Add each soul's properties here
	with(battle_soul_red){
		moveable=false;
		_fucking=true;
		image_alpha=0;
	}
}