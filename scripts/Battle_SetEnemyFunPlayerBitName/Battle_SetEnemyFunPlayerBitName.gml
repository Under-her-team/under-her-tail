// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SetEnemyFunSubjectName(){
	var ENEMY=argument[0];
	var SUBJECT=argument[1];
	var TEXT=argument[2];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && SUBJECT>=0 && SUBJECT<=6){
		battle._enemy_subject_name[ENEMY,SUBJECT]=TEXT;
		return true;
	}else{
		return false;
	}

}