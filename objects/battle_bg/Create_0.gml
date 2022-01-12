depth=DEPTH_BATTLE.BG;
var ENCOUNTER=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.ENCOUNTER);
var BG = Encounter_GetBackground(ENCOUNTER);

sprite_index=BG;

image_speed=0;
image_index=0;

_transition_count=0;