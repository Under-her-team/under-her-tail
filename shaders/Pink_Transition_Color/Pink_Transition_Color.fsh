//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main()
{
	vec4 pink_color  = vec4(1.0,0.52941,0.94118,1.0);
	vec4 texColor = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 altered_color;
	if(texColor.a!=0.0){
		float red = (time*((pink_color.r-texColor.r)/10.0))+texColor.r;
		float green = (time*(pink_color.g-texColor.g)/10.0)+texColor.g;
		float blue = (time*(pink_color.b-texColor.b)/10.0)+texColor.b;
		altered_color = vec4(red,green,blue,texColor.a);
	}
	else altered_color=texColor;
	
    gl_FragColor = v_vColour * altered_color;
}
