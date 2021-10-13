/// @description Fading
// You can write your code in this editor
if(_fade_out) {
	image_alpha=clamp(image_alpha-0.01,0.50,1);
	if(image_alpha==0.5) _fade_out=false;
}
else if(_fade_in) {
	image_alpha=clamp(image_alpha+0.01,0.50,1);
	if(image_alpha==1) _fade_in=false;
}