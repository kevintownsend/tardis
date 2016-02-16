all : tardis.o libtardis.a

tardis.o :
	g++ -c tardis.cpp

libtardis.a :
	ar rcs libtardis.a tardis.o

release :
	cp libtardis.a ${HOME}/lib/.
	cp tardis.h ${HOME}/include/.

clean:
	rm *.o *.a
