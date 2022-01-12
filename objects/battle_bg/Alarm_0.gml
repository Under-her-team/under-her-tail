/// @description Change background
// You can write your code in this editor
if(_transition_count<10) {
	image_alpha-=0.1;
	alarm[0]=1;
	_transition_count+=1;
}
else {
	image_alpha=0;
	_transition_count=0;
}

