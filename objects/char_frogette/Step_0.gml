/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (ready_to_battle && (!instance_exists(ui_dialog)))
{
	//instance_exists(ui_dialog) seems to check for when dialogue is occuring)
    alarm[0] = 1 //This will trigger battle stuff. 
}