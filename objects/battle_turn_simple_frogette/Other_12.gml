///@desc Turn Start

//Start the attack!
_inst[0]=instance_create_depth(battle_board.x-25,battle_board.y-25,0,battle_bullet_test);

_inst[1]=instance_create_depth(battle_board.x-50,battle_board.y-50,0,battle_enemy_HEART);
battle_enemy_HEART.original_turn=self;