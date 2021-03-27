///@arg bgm_slot
function Music_IsPaused() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		if(Music_IsPlaying(SLOT)){
			return audio_is_paused(Music_GetID(SLOT));
		}else{
			return false;
		}
	}else{
		return false;
	}


}
