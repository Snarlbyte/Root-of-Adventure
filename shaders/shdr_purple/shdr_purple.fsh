//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D( gm_BaseTexture, v_vTexcoord );
	texColor.rgb = vec3(texColor.r*0.67,texColor.g*0.5,texColor.b*0.86);
	gl_FragColor = texColor;
}
