function Encounter_Custom() {
	Encounter_Set(0,-1,battle_enemy,-1,"* You encountered nothing!",-1);

	//Simple Battle
	//Encounter_Set(1,-1,battle_enemy_simple,-1,"* You encountered the test&  monster!","battle");
	Encounter_Set(1,-1,battle_enemy_simple,-1,"* You encountered the test&  monster!");

	//Gaster Blaster
	Encounter_Set(2,-1,battle_enemy_gb,-1,"* Gaster Blaster example.",-1);
	
	//Frogette
	Encounter_Set(3,-1,battle_enemy_frogette,-1,"* UTH Battle Test.",-1);

	//LOTS OF FROGS
	Encounter_Set(4,battle_enemy_frogette,-1,battle_enemy_frogette,"* Gay(?) Frogs.",-1);
	
	//Frogette
	Encounter_Set(5,-1,battle_spare_effects,-1,"* Testing Spare Effects.",-1);

}
