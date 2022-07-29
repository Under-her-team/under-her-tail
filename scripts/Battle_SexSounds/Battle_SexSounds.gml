// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_SexSounds() constructor{
	
	//Get the relevant sound
	if(argument[0]==0){
		//Penetrative sex sounds
		soundA=snd_penetrative_loopA;
		soundB=snd_penetrative_loopB;
		soundC=snd_penetrative_loopC;
		soundD=snd_penetrative_loopD;
		
		soundIntro=snd_penetrative_loopA;
		soundClimax=snd_penetrative_climax;
	}
	else if(argument[0]==1){
		//Oral sex sounds
		soundA=snd_penetrative_loopA;
		soundB=snd_penetrative_loopB;
		soundC=snd_penetrative_loopC;
		soundD=snd_penetrative_loopD;
		
		soundIntro=snd_penetrative_loopA;
		soundClimax=snd_penetrative_climax;
	}
	else if(argument[0]==2){
		//Outercourse sex sounds
		soundA=snd_penetrative_loopA;
		soundB=snd_penetrative_loopB;
		soundC=snd_penetrative_loopC;
		soundD=snd_penetrative_loopD;
		
		soundIntro=snd_penetrative_loopA;
		soundClimax=snd_penetrative_climax;
	}
	
	//Keep track of most recent sounds used, as well as the first sound used. Will be used later.
	soundOptions=ds_list_create();
	ds_list_add(soundOptions,1,[2,3]);
	usedSound=0;
	
	//Say which frame the sound should play
	impact_timing=argument[1]; //Frame for looping animation
	intro_timing=argument[2]; //frame for intro animation
	climax_timing=argument[3]; //Frame for end animation
	
	//Flag to make sure the sound is played once per loop.
	played_flag=false;
	
	//Add unique intro sound
	if (argument_count <= 5){
		soundIntro=argument[4];
		ds_list_add(soundOptions,0);
		usedSound=-1;
	}
	
	//Method that plays the sound.
	playSound = function(current_frame,current_animation){
		if(!played_flag) return; //If already played during this loop
		
		//The reason the above is there, and why it's floor() is that the current frame may not be
		//an integer, and it could happen multiple times between frames, so I'm limiting it to
		//once per loop. It gets reset at the end of the animation
		
		//Intro
		if(current_animation==0 and floor(current_frame)==intro_timing){
			audio_play_sound(soundIntro,0,false);
			played_flag=true; 
		}
		else if(current_animation==1 and floor(current_frame)==impact_timing){
			//Loop
			
			//Shuffle the list of sounds
			ds_list_shuffle(soundOptions);
			//Add the used sound to the end (if it wasn't unique)
			if(usedSound<=0) ds_list_add(soundOptions,usedSound);
			//Get the first sound and use that, replacing usedSound
			usedSound = ds_list_find_value(soundOptions,0);
			ds_list_delete(soundOptions,0);
			
			var selectedSound = noone;
			switch(usedSound){
				case 0:
					selectedSound=soundA;
					break;
				case 1:
					selectedSound=soundB;
					break;
				case 2:
					selectedSound=soundC;
					break;
				case 3:
					selectedSound=soundD;
					break;
			}
			
			audio_play_sound(selectedSound,0,false);
			played_flag=true; 
		}
		else if(current_animation==2 and floor(current_frame)==climax_timing){
		//Climax
			audio_play_sound(soundClimax,0,false);
			played_flag=true; 
		}
	}
	
}