///@arg bgm_slot
function Music_Pause() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		if(Music_IsPlaying(SLOT)&&!Music_IsPaused(SLOT)){
			audio_pause_sound(Music_GetID(SLOT));
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
