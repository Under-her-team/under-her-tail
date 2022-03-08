function Player_GetDefTotal() {
	return Player_GetDef()+Player_GetDefItem()+10+(Player_IsInBattle() ? Battle_GetPlayerTempDef() : 0);


}
