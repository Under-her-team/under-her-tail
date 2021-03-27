///@arg bgm_slot
function Music_GetID() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		return global._bgm_id[SLOT];
	}else{
		return -1;
	}


}
