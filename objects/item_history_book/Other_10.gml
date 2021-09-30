/// @description Use
// You can write your code in this editor

// Inherit the parent event

if(instance_exists(battle_enemy_frogette)){
	with(battle_enemy_frogette){
		book=true;
		arousal+=34;
	}
	switch(variable_instance_get(instance_find(battle_enemy_frogette,0),"book_counter")){
		case 0:
			Dialog_Add("Frogette book 1");
			with(battle_enemy_frogette) book_counter=1;
			break;
		case 1:
			Dialog_Add("Frogette book 2");
			with(battle_enemy_frogette) book_counter=2;
			break;
		case 2:
			Dialog_Add("Frogette book 3");
			break;
	}
}
else{
	Dialog_Add(Lang_GetString("item.history_book.use"));
}

Dialog_Start();

event_inherited();

