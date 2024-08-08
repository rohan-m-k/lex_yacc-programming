%{
#include<stdio.h>
#include "2nd.tab.h"
%}
%%
int|float|char return BUILTIN;
"," return COMMA;
";" return SC;
[a-zA-Z]+[a-zA-Z0-9]* return ID;
"\n" return NL;
%%
