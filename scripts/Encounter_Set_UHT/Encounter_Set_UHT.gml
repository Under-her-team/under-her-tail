///@arg id
///@arg enemy
///@arg menu_dialog
///@arg bgm*
///@arg menu_mercy_flee_enabled*
///@arg pause_bgm*
///@arg quick*
///@arg soul_x*
///@arg soul_y*
function Encounter_Set_UHT() {
	var ID=argument[0];
	var ENEMY=argument[1];
	var MENU_DIALOG=argument[2];
	var BGM=-1;
	var MENU_MERCY_FLEE_ENABLED=true;
	var PAUSE_BGM=true;
	var QUICK=false;
	var SOUL_X=48;
	var SOUL_Y=454;
	var BG=spr_battle_bg;//Addded bit where the background is decided by the encounter
	if(argument_count>=4){
		BGM=argument[3];
	}
	if(argument_count>=5){
		BG=argument[4];
	}
	if(argument_count>=6){
		MENU_MERCY_FLEE_ENABLED=argument[5];
	}
	if(argument_count>=7){
		PAUSE_BGM=argument[6];
	}
	if(argument_count>=8){
		QUICK=argument[7];
	}
	if(argument_count>=9){
		SOUL_X=argument[8];
	}
	if(argument_count>=10){
		SOUL_Y=argument[9];
	}


	if(ID>=0){
		var map=global._encounter;
		var map_e=-1;
		if(ds_map_exists(map,ID)){
			map_e=ds_map_find_value(map,ID);
			ds_map_clear(map_e);
		}else{
			map_e=ds_map_create();
			ds_map_add(map,ID,map_e);
		}
		ds_map_add(map_e,"enemy",ENEMY);
		ds_map_add(map_e,"menu_dialog",MENU_DIALOG);
		ds_map_add(map_e,"bgm",BGM);
		ds_map_add(map_e,"pause_bgm",PAUSE_BGM);
		ds_map_add(map_e,"menu_mercy_flee_enabled",MENU_MERCY_FLEE_ENABLED);
		ds_map_add(map_e,"quick",QUICK);
		ds_map_add(map_e,"soul_x",SOUL_X);
		ds_map_add(map_e,"soul_y",SOUL_Y);
		ds_map_add(map_e,"background",BG);
		return true;
	}else{
		return false;
	}


}
