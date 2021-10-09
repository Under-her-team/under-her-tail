// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_Sexcess(){
	var heart = argument[0];
	
	var INST=Battle_GetEnemy(Battle_GetMenuChoiceEnemy());
	if(instance_exists(INST)){
				with(INST){
					INST._Current_END-=1;
					if(heart) INST.satisfaction+=1;
				}
			}
}