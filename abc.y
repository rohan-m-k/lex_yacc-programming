%{
#include<stdio.h>
int ca=0,cc=0;
int yylex(void);
int yyerror();
%}

%token A B C
%%
string: a B c
;
a:A a{ca++;}
 |A {ca++;}
 ;
 
c:C c{cc++;}
 |C {cc++;}
 ;
%%
int main()
{
printf("Enter the input:");
yyparse();
if(ca>=3 && cc>=2 && cc<=10)
{
printf("Valid input");
}
}
void yyerror()
{
printf("Wrong input");
}
