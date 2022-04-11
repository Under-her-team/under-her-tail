if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}

if(place_meeting(x,y,battle_soul_tp)){
	Battle_CallSoulTPGraze();
} else _in_contact_with_graze=false;