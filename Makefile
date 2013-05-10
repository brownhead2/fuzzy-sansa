COMPILE = g++
CFLAGS = -Wall -Werror

a.exe: main.o map_generation.o control.o
	$(COMPILE) $(CFLAGS) main.o map_generation.o control.o

main.o: main.cpp map_generation.hpp control.hpp
	$(COMPILE) $(CFLAGS) -c main.cpp 

map_generation.o: map_generation.hpp map_generation.cpp
	$(COMPILE) $(CFLAGS) -c map_generation.cpp

control.o: control.hpp control.cpp
	$(COMPILE) $(CFLAGS) -c control.cpp

clean:
	rm -f a.out *.exe