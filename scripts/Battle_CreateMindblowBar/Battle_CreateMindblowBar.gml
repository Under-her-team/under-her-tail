// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_CreateMindblowBar(){
	var ENEMY=argument[0];
	
	var tx=battle_board.x-battle_board.left-5+28+290;
	var ty=battle_board.y-battle_board.up-5+20+(ENEMY*32)+7;
	
	battle._mindblow_bar[ENEMY]=instance_create_depth(tx,ty,DEPTH_BATTLE.UI_HIGH,battle_menu_mindblow_bar);
}