// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_GetFunDamage(){
	var ATK=Player_GetAtkTotal();
	var END=Battle_GetEnemyEND();
	var damage=ATK-END+random(2);
	damage*=2.2;
	damage=round(damage);
	
	return damage;
}