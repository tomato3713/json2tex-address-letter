CC = gcc
CFLAGS = -O0 -g -Wall -Wextra -pedantic-errors

CPPC = g++
CPPFLAGS = -O0 -g -Wall -Wextra

atena: atena.c ./parson/parson.c
	$(CC) $(CFLAGS) -o $@ atena.c ./parson/parson.c
	./$@ send.json

atenacpp: atena.c ./parson/parson.c
	$(CPPC) $(CPPFLAGS) -o $@ atena.c ./parson/parson.c
	./$@

clean:
	rm -f atena *.o

