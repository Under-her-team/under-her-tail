function Flag_Custom() {
	Player_SetName("FRISKY");
	Player_SetLv(1);
	Player_SetHpMax(20);
	Player_SetHp(20);
	Player_SetAtk(10);
	Player_SetDef(10);
	Player_SetSpd(2);
	Player_SetInv(40);
	Player_SetBattleMenuFight(battle_menu_fight_knife);

	Item_SetWeapon(item_stick);
	Item_SetArmor(item_bandage);
    
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TEXT_TYPER_CHOICE,-1);
}
