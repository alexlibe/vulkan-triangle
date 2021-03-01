EXECUTABLE-NAME = Vulkan-Engine-Test
CFLAGS = -std=c++17 -g -iquote ./include -Wall -Wextra
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

RELEASE-CFLAGS = -std=c++17 -O3 -iquote ./include -Wall -Wextra

Vulkan-Engine: src/main.cpp
	g++ $(CFLAGS) -o ${EXECUTABLE-NAME} $(LDFLAGS) ./src/*.cpp

.PHONY: test clean

release:
	g++ $(RELEASE-CFLAGS) -o ${EXECUTABLE-NAME} $(LDFLAGS) ./src/*.cpp
	glslangValidator -V -o shaders/shader.vert.spv shaders/shader.vert
	glslangValidator -V -o shaders/shader.frag.spv shaders/shader.frag

compile:
	g++ $(CFLAGS) -c $(LDFLAGS) ./src/*.cpp

link:
	g++ $(CFLAGS) -o ${EXECUTABLE-NAME} $(LDFLAGS) ./*.o

test: ${EXECUTABLE-NAME}
	./${EXECUTABLE-NAME}

clean:
	rm -f ${EXECUTABLE-NAME}
	rm -f ./*.o
	rm -f ./shaders/*.spv
