/// @description Set Result Flag
// You can write your code in this editor

if(_END==satisfaction && arousal==100) Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT,1);
else if(satisfaction==0 && arousal==0) Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT,2);
else Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.FROGETTE_RESULT,0);