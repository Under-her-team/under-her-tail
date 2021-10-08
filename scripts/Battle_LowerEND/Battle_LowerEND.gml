// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_LowerEND(){
	
	var INST=Battle_GetEnemy(Battle_GetMenuChoiceEnemy());
	if(instance_exists(INST)){
				with(INST){
					INST._Current_END-=1;
				}
			}
}