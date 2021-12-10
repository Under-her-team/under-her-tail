/// @description Create effects
if (live_call()) return live_result;
// You can write your code in this editor

//particles[11]=noone;

for(var i = 0; i <= 11; i++){
	particles[11-i]=instance_create_depth(x,y,DEPTH_BATTLE.UI_HIGH,battle_heart_particle);
	particles[11-i].degree=(i*30);
}

//instance_create_depth(x,y,DEPTH_BATTLE.UI_HIGH,battle_heart_particle);

_count=0;