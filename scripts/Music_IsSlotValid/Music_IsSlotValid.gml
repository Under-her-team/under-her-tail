///@arg bgm_slot
function Music_IsSlotValid() {
	var SLOT=argument[0];

	if(SLOT>=0&&SLOT<6){
		return true;
	}else{
		return false;
	}


}
