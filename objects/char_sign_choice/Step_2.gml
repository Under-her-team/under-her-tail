/// @description Time to choose!
// You can write your code in this editor

// Inherit the parent event
event_inherited();
depth=200-y;

c=Player_GetTextTyperChoice();
//TextTyperChoice is set to 0 or 1 depending on player choice.
switch(c)
{
	case 0: //Choice 0
		if timetochoose==true{
			text = choice0;
			Dialog_Add(text); //loads "text" with whatever was written for choice0.
			Dialog_Start(); //Prints text out into the textbox for player to read.
			timetochoose=false; //ensures this code only runs once.
			text = afterchoice0; //Sets text for 2nd interaction after choice made.
			break; } //Ends the sequence of code so it doesn't run forever in a Step event!
		else{
			break; }
	case 1: //Choice 1
		if timetochoose==true{
			text = choice1;
			Dialog_Add(text); 
			Dialog_Start();
			timetochoose=false; 
			text = afterchoice1;
			break; }
		else{
			break; }
}

