uniform highp mat4 qt_Matrix;
attribute highp vec4 qt_Vertex;
attribute highp vec2 qt_MultiTexCoord0;
varying highp vec2 qt_TexCoord0;

//xBRZ variables
#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

COMPAT_VARYING vec4 _t3;
COMPAT_VARYING vec4 _t2;
COMPAT_VARYING vec4 _t1;
COMPAT_VARYING vec2 _texCoord1;
COMPAT_VARYING vec4 _color1;
COMPAT_VARYING vec4 _position1;
struct input_dummy {
	vec2 _video_size;
	vec2 _texture_size;
	vec2 _output_dummy_size;
};
struct out_vertex {
	vec4 _position1;
	vec4 _color1;
	vec2 _texCoord1;
	vec4 _t1;
	vec4 _t2;
	vec4 _t3;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform int frameDirection;
uniform int frameCount;
uniform vec2 outputSize;
uniform vec2 textureSize;
uniform vec2 inputSize;

void do_xbrz_setup()
{
	out_vertex _OUT;
	vec2 _ps;
	_r0006 = qt_Vertex.x*gl_ModelViewProjectionMatrix[0];
	_r0006 = _r0006 + qt_Vertex.y*gl_ModelViewProjectionMatrix[1];
	_r0006 = _r0006 + qt_Vertex.z*gl_ModelViewProjectionMatrix[2];
	_r0006 = _r0006 + qt_Vertex.w*gl_ModelViewProjectionMatrix[3];
	_ps = vec2(1.00000000E+00/textureSize.x, 1.00000000E+00/textureSize.y);
	_OUT._t1 = qt_MultiTexCoord0.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
	_OUT._t2 = qt_MultiTexCoord0.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
	_OUT._t3 = qt_MultiTexCoord0.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
	_ret_0._position1 = _r0006;
	_ret_0._color1 = COLOR;
	_ret_0._texCoord1 = qt_MultiTexCoord0.xy;
	_ret_0._t1 = _OUT._t1;
	_ret_0._t2 = _OUT._t2;
	_ret_0._t3 = _OUT._t3;
	gl_Position = _r0006;
	COL0 = COLOR;
	TEX0.xy = qt_MultiTexCoord0.xy;
	TEX1 = _OUT._t1;
	TEX2 = _OUT._t2;
	TEX3 = _OUT._t3;
	return;
	COL0 = _ret_0._color1;
	TEX0.xy = _ret_0._texCoord1;
	TEX1 = _ret_0._t1;
	TEX2 = _ret_0._t2;
	TEX3 = _ret_0._t3;
}

void main() {
	do_xbrz_setup();
	qt_TexCoord0 = qt_MultiTexCoord0;
	gl_Position = qt_Matrix * qt_Vertex;
}
