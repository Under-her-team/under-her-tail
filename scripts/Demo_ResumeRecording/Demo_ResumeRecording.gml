function Demo_ResumeRecording() {
	if(Demo_IsRecording()){
		if(Demo_IsRecordingPaused()){
			demo_recorder._paused=false;
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
