//if (live_call()) return live_result;

draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
//draw_text(x,y,Player_GetName()+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

//draw_sprite_ext(spr_pixel,0,x+245,y-1,50,21,0,make_color_rgb(255,255,0),1);

var hp_max = Player_GetHpMax();
var hp = Player_GetHp();
var hp_percent = floor((hp/hp_max)*50);

draw_sprite_ext(spr_pixel,0,x+245,y-1,50,21,0,make_color_rgb(192,0,0),1);
draw_sprite_ext(spr_pixel,0,x+245,y-1,hp_percent,21,0,make_color_rgb(255,255,0),1);

//draw_text(x+245+Player_GetHpMax()*1.25+14,y,(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)<10 ? "0" : "")+string(Player_GetHp())+" / "+(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX)<10 ? "0" : "")+string(Player_GetHpMax()));
draw_text(x+245+50+14,y,(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)<10 ? "0" : "")+string(Player_GetHp())+" / "+(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX)<10 ? "0" : "")+string(Player_GetHpMax()));



//TP

var tp=floor(Battle_GetTP()/2.5);
var percentage_buffer=30;
if(tp>=100) percentage_buffer=0;
else if(tp>=10) percentage_buffer=15;

var tp_text = string(tp)+"%";
var tp_fraction = floor(tp/2)-1;

draw_sprite(spr_battle_ui_tp,0,x+426,y+4);
draw_sprite_ext(spr_pixel,0,x+457,y-1,50,21,0,make_color_rgb(23,23,71),1);
if(tp_fraction>0){
	draw_sprite_ext(spr_pixel,0,x+457,y-1,tp_fraction,21,0,make_color_rgb(40,224,221),1);
	draw_sprite_ext(spr_pixel,0,x+457+tp_fraction,y-1,1,21,0,make_color_rgb(255,255,255),1);	
}
draw_text(x+457+50+14+percentage_buffer,y,tp_text);