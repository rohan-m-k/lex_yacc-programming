%{
#include <stdio.h>
int flag = 0;
int yylex(void);
void yyerror(char *);

%}

%token PRINTF_START STRING ',' NAME ')' ';' 

%%

s: PRINTF_START STRING ',' NAME ')' ';'  { flag = 1; }
         ;
%%

int main() 
{
    printf("Enter statement: \n");
    yyparse();
    if (flag == 1) 
    {
        printf("Valid\n");
    }
    return 0;
}

void yyerror(char *s) 
{
    printf("Error: %s\n", s);
}
