#include <stdio.h>
#include "y.tab.h"

int
main(int argc, char **argv) {
	return yyparse();
}
