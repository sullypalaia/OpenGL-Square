CC = g++
CFlags = -std=c++17 -fdiagnostics-color=always -Wall -g -I dependencies/include -L dependencies/library
CFrameworks = -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo -framework CoreFoundation -Wno-deprecated
PROG = app

default: src/*.cpp src/*.hpp main_src/main.cpp dependencies/library/libglfw.3.3.dylib src/glad.c
	mkdir exe
	$(CC) $(CFrameworks) $(CFlags) dependencies/library/libglfw.3.3.dylib src/*.cpp src/glad.c main_src/main.cpp -o exe/$(PROG)

clean:
	rm -rf exe