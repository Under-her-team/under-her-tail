///@arg slot
///@arg flag_name
function Player_LoadInfo() {
	var SLOT=argument[0];
	var FLAG_NAME=argument[1];

	Flag_SetSaveSlot(SLOT);

	Flag_Load(FLAG_NAME);
	return true;


}
