function Battle_IsEmptyBattle() {
	//Used to check if the battle is completely empty
	//Makes mindblow null
	var proc=0;

	repeat(3){
		if(instance_exists(Battle_GetEnemy(proc))){
			return false;
		}
		proc+=1;
	}

	return true;


}
