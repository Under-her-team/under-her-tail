///@arg bgm_slot
function Music_IsPlaying() {
	var SLOT=argument[0];

	if(Music_IsSlotValid(SLOT)){
		return audio_is_playing(Music_GetID(SLOT));
	}else{
		return false;
	}


}
