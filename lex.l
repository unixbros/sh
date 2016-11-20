%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+			return DIGIT;
[a-zA-Z][a-zA-Z0-9]*	return WORD;
[;\n]			return SEMICOLON;
[ \t]+			/* ignore whitespace */;
%%
