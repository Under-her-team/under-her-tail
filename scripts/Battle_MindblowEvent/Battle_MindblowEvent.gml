// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_MindblowEvent(){
	var proc=0;
		repeat(3){
			var INST=Battle_GetEnemy(proc);
			if(instance_exists(INST)){
				with(INST){
					event_user(15);
				}
			}
			proc+=1;
		}
		return true;
}