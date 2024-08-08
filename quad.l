%{
#include"quad.tab.h"
%}
%%
[+|-]?[0-9] return EXP;
[+] return PLUS;
[-] return MINUS:
[*] return MUL;
[/] return DIV;
%%
int yywrap()
{
return 1;
}
