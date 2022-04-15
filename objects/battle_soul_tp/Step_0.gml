/// @description Adjust apperance accordingly & move
// You can write your code in this editor

if(!place_meeting(x,y,battle_bullet) && !special_graze){
	_grazing=false;
}

if(_grazing){
	image_alpha=1;
}
else if(invin>0){
	image_alpha=0;
	invin-=1;
}
else if(image_alpha>0){
	image_alpha-=(1/room_speed);
}


if(Battle_GetState()==BATTLE_STATE.IN_TURN){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*20){
		if(Input_IsHeld(INPUT.UP)){
			if(!position_meeting(x,y-soul_sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.DOWN)){
			if(!position_meeting(x,y+soul_sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(Input_IsHeld(INPUT.LEFT)){
			if(!position_meeting(x-soul_sprite_width/2,y,block)){
				x-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(!position_meeting(x+soul_sprite_width/2,y,block)){
				x+=0.1;
			}
		}
	}
}