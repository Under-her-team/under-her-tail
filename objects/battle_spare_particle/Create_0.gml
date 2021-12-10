if (live_call()) return live_result;

randomize();

image_speed=0.5;
direction=random(360);
friction=0.5;
speed=5.5;

var image_variation=random(1);
image_xscale=0.8+image_variation;
image_yscale=0.8+image_variation;