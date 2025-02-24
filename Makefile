# Compiler and flags
CC = gcc
CFLAGS = -g -Wall

# Object files
OBJS = main.o memoize.o

# Target executable
all: fibonacci

fibonacci: $(OBJS)
	$(CC) -o fibonacci $(CFLAGS) $(OBJS)

main.o: main.c memoize.h
	$(CC) -c $(CFLAGS) main.c

memoize.o: memoize.c memoize.h
	$(CC) -c $(CFLAGS) memoize.c

clean:
	rm -f fibonacci $(OBJS)