varying vec2 pos; //current pixel position
uniform vec2 u_pos; //light source positon

uniform float _intensity;

const float zz = 1.; //larger zz, larger light

void main(){
    vec2 dis = pos - u_pos;
    float str = _intensity/(sqrt(dis.x*dis.x + dis.y*dis.y + zz*zz)-zz); //strength of light is the inverse distance
    //gl_FragColor = vec4(vec3(str),0.9);
	gl_FragColor = vec4(str * 0.7, str * 0.4, str * 0.1, 0.7);
}