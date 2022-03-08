// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Encounter_GetMindblowBackground(){
	var ID=argument[0];

	var map=global._encounter;
	if(ds_map_exists(map,ID)){
		var map_e=ds_map_find_value(map,ID);
		var result=ds_map_find_value(map_e,"background_mindblow");
		return result;
	}else{
		return spr_battle_bg_mindblow;
	}
}