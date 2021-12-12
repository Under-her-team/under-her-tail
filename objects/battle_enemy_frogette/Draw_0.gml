/// @description Transition Effect
// You can write your code in this editor
if (live_call()) return live_result;


if(_animation_stage==0) {
	shader_set(Pink_Transition_Color);
	shader_set_uniform_f(_uni_transitCount,_shader_scale);
}
draw_self();
shader_reset();