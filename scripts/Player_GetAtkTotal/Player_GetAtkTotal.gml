function Player_GetAtkTotal() {
	return Player_GetAtk()+Player_GetAtkItem()+10+(Player_IsInBattle() ? Battle_GetPlayerTempAtk() : 0);


}
