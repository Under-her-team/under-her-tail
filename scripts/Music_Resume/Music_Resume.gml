///@arg bgm_slot
function Music_Resume() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		if(Music_IsPlaying(SLOT)&&Music_IsPaused(SLOT)){
			audio_resume_sound(Music_GetID(SLOT));
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
