varying highp vec2 qt_TexCoord0;
uniform lowp float qt_Opacity;
uniform sampler2D src;
uniform highp float opacity_multiplier;
uniform highp float red_change;
uniform highp float green_change;
uniform highp float blue_change;


void apply_rgb_change(inout highp vec4 tmp_frag_color)
{
	tmp_frag_color.r = min(max(tmp_frag_color.r + red_change, 0.0), 1.0);
	tmp_frag_color.g = min(max(tmp_frag_color.g + green_change, 0.0), 1.0);
	tmp_frag_color.b = min(max(tmp_frag_color.b + blue_change, 0.0), 1.0);
}

void main()
{
	highp vec4 tmp_frag_color = texture2D(src, qt_TexCoord0);

	apply_rgb_change(tmp_frag_color);
	tmp_frag_color.a *= opacity_multiplier;
	
	gl_FragColor = tmp_frag_color * tmp_frag_color.a;
};
