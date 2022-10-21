#ifndef SHADER_CLASS_HPP
#define SHADER_CLASS_HPP

#include <glad/glad.h>
#include<string>
#include<fstream>
#include<sstream>
#include<iostream>
#include<cerrno>

class Shader {
public:
    GLuint ID;
	Shader(const char* vertexFile, const char* fragmentFile);

	void Activate();
	void Delete();
};
#endif