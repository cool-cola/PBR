#version 430
// Physically Based Rendering
// Copyright (c) 2017 Michał Siejak

// Environment skybox: Vertex program.

layout(location=0) in vec3 position;
layout(location=0) uniform mat4 viewProjectionMatrix;

out vec3 localPosition;

void main()
{
	localPosition = position.xyz;
	gl_Position   = viewProjectionMatrix * vec4(position, 1.0);
}
