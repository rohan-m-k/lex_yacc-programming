%{
#include "switch.tab.h"
%}

%%
"switch" return SW;
"{" return OF;
"}" return CF;
"(" return OP;
")" return CP;
[a-zA-Z0-9 ]+ return ID;
"case" return CASE;
[0-9]+ return CI;
\"[a-zA-Z]*\" return CC;
[a-zA-Z0-9 ]+ return STA; /* assuming statements/statement is a sequence of identifiers */
"break" return BREAK;
":" return COL;
";" return SEMI;
[\n\t] ;
%%

int yywrap()
{
    return 1;
}
