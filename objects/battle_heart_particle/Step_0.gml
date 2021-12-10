if (live_call()) return live_result;

var radian = degtorad(degree);
_radius += (-0.005*sqr(_count))+5;

x=_original_x+(_radius*cos(radian));
y=_original_y+(_radius*sin(radian));

_count+=1;
degree+=8;

if(_count>=20) image_alpha-=0.10;
if(_count>=30) instance_destroy();