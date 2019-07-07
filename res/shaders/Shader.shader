#shader vertex
#version 330 core

layout(location = 0) in vec4 aPos;
layout(location = 1) in vec2 aTexCoord;

out vec2 v_TexCoord;

uniform float u_Offset;

void main() {
	gl_Position = aPos;
	v_TexCoord = aTexCoord;
};

#shader fragment
#version 330 core

in vec2 v_TexCoord;

layout(location = 0) out vec4 color;

uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main() {
	vec4 texColor = texture(u_Texture, v_TexCoord);
	color = texColor;
}
