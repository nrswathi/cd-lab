%{
#include "y.tab.h"
extern yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
. return yytext[0];
[\n] return 0;
%%
int yywrap(){
	return 0; //in the rules - dont have to write case for every operator, . handles this case
}
