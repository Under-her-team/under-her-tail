event_inherited();

Dialog_Add(text);
Dialog_Start();
if(audio_exists(bgm)){
	if(!Music_IsPlaying(bgm_slot)||(Music_IsPlaying(bgm_slot)&&Music_GetAudio(bgm_slot)!=bgm)){
		Music_Play(0,bgm,false)
		Music_SetPitch(bgm_slot,pitch);
	}
}