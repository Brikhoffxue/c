# Makefile

CC = gcc -m64
PG = Tetris_Game
SOURCE = Tetris_Game.c
OBJECTS = Tetris_Game.o
CFLAGS = -std=gnu99 -s -Wall -O3
LDLIBS = -l pthread

${PG}: ${OBJECTS}
	${CC} ${CFLAGS} ${LDLIBS} -o ${PG} ${OBJECTS}
	rm -f ${OBJECTS}

${OBJECTS}: ${SOURCE}
	${CC} ${CFLAGS} -c ${SOURCE}

clean:
	rm -f ${PG} ${OBJECTS}
