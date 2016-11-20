YFLAGS  = -d
CFLAGS  = -g
LDFLAGS = -static -g

all: parse.o y.tab.h sh.o lex.o sh

sh.o: sh.c y.tab.h
parse.o y.tab.h: parse.y
lex.o: lex.l y.tab.h
sh: parse.o lex.o sh.o

clean:
	rm -f sh.o lex.o parse.o y.tab.h sh
