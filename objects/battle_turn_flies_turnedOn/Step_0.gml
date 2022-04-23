/// @description Add soul
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(_flies>=1 && _flies<=4){
	_timer-=1;
	if(_timer<0) {
		_flies+=1;
		_timer=30;
		var random_spot=random_range(-65,65)

		instance_create_depth(battle_board.x+random_spot,battle_board.y-65,0,battle_bullet_fly);
	}
}
else if(_flies==5){
	_timer-=1;
	if(_timer<0){
		var random_spot=random_range(-65,65)
		_soul=instance_create_depth(battle_board.x+random_spot,battle_board.y-65,0,battle_bullet_fly_soul);
		battle_enemy_HEART.original_turn=self;
		_flies+=1;	
	}
}