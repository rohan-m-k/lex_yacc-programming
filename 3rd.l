%{
#include <stdio.h>
#include "3rd.tab.h"  
%}

%%

"printf("     { return PRINTF_START; } 
[ \t]+          ; // Skip whitespace
[\n]            { return 0; } 
["][a-zA-Z0-9]+["] { return STRING; }
[a-zA-Z_][a-zA-Z0-9_]*  { return NAME; }
","             { return ','; } 
";"             { return ';'; } 
")"             { return ')'; } 
.              

%%

int yywrap() {
    return 1; 
}
