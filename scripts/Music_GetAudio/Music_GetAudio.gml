///@arg bgm_slot
function Music_GetAudio() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		return global._bgm_audio[SLOT];
	}else{
		return -1;
	}


}
