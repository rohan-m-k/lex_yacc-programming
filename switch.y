%{
#include <stdio.h>
int yyerror();
int yylex();
int flag = 0;
%}

%token SW OF CO OP CP ID CI CC SEMI BREAK STA COL CF CASE DEFAULT
%start E

%%
E: INPUT                    {flag=1;}
 ;
INPUT:SW OP ID CP OF main CF
     ;
main:case_statements
    ;
case_statement:CASE CI COL STA SEMI BREAK SEMI
              |CASE CC COL STA SEMI BREAK SEMI
              |DEFAULT COL STA SEMI BREAK SEMI
              ;
%%

int main()
{
    printf("Enter the switch statement:\n");
    yyparse();
    if (flag == 1)
        printf("valid statement\n");
    return 0;
}

int yyerror()
{
    printf("Invalid Statement\n");
    return 1;
}
