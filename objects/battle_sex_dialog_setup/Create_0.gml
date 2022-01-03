/// @description Get dialogue sets available. 
// You can write your code in this editor

//Have the text for the two text bubbles
text0="";
text1="";

//Time delay for how long the bubles are around.
//0, the default, means they disappear when they're done typing
time_delay=0;
_activate_delay=false;

//What template each text box needs
//1 and 0 is the default for left and right.
template0=1;
template1=0;

//Instances of dialogue box
_inst0=noone;
_inst1=noone;

//Creation flags - Just to ensure they've been made
_creation_flag0=false;
_creation_flag1=false;

//Location for text boxes
box_0_x=0;
box_0_y=0;
box_1_x=0;
box_1_y=0;


alarm[0]=1;