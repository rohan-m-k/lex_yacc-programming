%{
#include "abc.tab.h"
%}
%%
a {return A;}
b {return B;}
c {return C;}
.;
%%
int yywrap()
{
return 1;
}
