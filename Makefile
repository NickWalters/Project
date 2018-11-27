
# A Makefile to build our ‘Bake’ project

C99     =  cc -std=c99
CFLAGS  =  -Wall -pedantic -Werror


bake : bake.o target.o urlDate.o
	$(C99) $(CFLAGS) -o bake bake.o target.o urlDate.o -lcurl


bake.o : bake.c bake.h
	$(C99) $(CFLAGS) -c bake.c

target.o : target.c bake.h
	$(C99) $(CFLAGS) -c target.c

urlDate.o : urlDate.c bake.h
	$(C99) $(CFLAGS) -c urlDate.c


