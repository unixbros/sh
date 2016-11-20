YFLAGS  = -d
CFLAGS  = -g
LDFLAGS = -static -g

all: parse.o y.tab.h sh.o lex.o sh

sh.o: sh.c y.tab.h
parse.o y.tab.h: parse.y
lex.o: lex.l y.tab.h
sh: parse.o lex.o sh.o
	${CC} -o $@ ${CFLAGS} ${LDFLAGS} parse.o lex.o sh.o

clean:
	rm -f sh.o lex.o lex.c parse.o parse.c y.tab.h sh
