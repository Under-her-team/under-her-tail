// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_ClearMindblowBars(){
	var count=0;
	repeat(3){
			if(instance_exists(battle._mindblow_bar[count])){
				instance_destroy(battle._mindblow_bar[count]);
			}
			
			count+=1;
		}
}