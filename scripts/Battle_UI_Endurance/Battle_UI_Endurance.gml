// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_UI_Endurance(){
	var TEXT="";
	if(argument_count>=1){
		TEXT=argument[0];
	}

	//销毁原实例
	if(instance_exists(battle._endurance_dialogue)){
		instance_destroy(battle._endurance_dialogue);
	}

	if(TEXT!=""){
		//创建实例
		var tx=battle_board.x-battle_board.left-5+428;
		var ty=battle_board.y-battle_board.up-5+20;

		battle._endurance_dialogue=instance_create_depth(tx,ty,0,text_typer);
	
		//更改文字
		var text_prefix="{scale 2}{voice 1}{speed 0}{shadow false}{gui false}{depth "+string(DEPTH_BATTLE.UI_HIGH)+"}{instant true}";
		
		battle._endurance_dialogue.text=text_prefix+TEXT;
		return battle._endurance_dialogue;
	}else{
		return noone;
	}

}