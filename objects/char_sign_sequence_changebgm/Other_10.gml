event_inherited();
switch(seq)
{
	case 0: 
		text = text0;
			Dialog_Add(text); //Loads textbox with "text"
			Dialog_Start(); //Ensures text is printed when player first interacts with this object.
		Music_SetPitch(bgm_slot,pitch0)
		seq = 1;
		break; //Important to ensure that all the code doesn't run immediately!
	case 1: 
		text = text1;
			Dialog_Add(text); 
			Dialog_Start(); 
		Music_SetPitch(bgm_slot,pitch1)
		seq = 2;
		break;
	case 2: 
		text = text2;
			Dialog_Add(text); 
			Dialog_Start(); 
		Music_SetPitch(bgm_slot,pitch2)
		seq = 0;
		break;
}