// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetEnemyFunSubjectName(){
	var ENEMY=argument[0];
	var SUBJECT=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && SUBJECT>=0 && SUBJECT<=6){
		return battle._enemy_subject_name[ENEMY,SUBJECT];
	}else{
		return "";
	}

}