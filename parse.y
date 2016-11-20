%{
#include <stdio.h>

extern int yylex();

void
yyerror(const char *str) {
	fprintf(stderr,"error: %s\n", str);
}

int
yywrap() {
	return 1;
}
%}

%token DIGIT WORD SEMICOLON

%%
commands: /* empty */
	| commands command SEMICOLON
	;

command:
	;
%%
