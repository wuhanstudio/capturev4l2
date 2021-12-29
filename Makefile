all: capturev4l2

capturev4l2: capturev4l2.o
	g++ -o capturev4l2 capturev4l2.o `pkg-config --libs opencv4`

capturev4l2.o: capturev4l2.cpp
	g++ -I /usr/include/opencv4 -c capturev4l2.cpp -fpermissive

clean:
	rm -rf capturev4l2.o capturev4l2
