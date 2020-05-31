%{
#include<stdio.h>
int keywords=0,identifiers=0,operators=0;
%}
%%
#include.* ;
\".*\" ;
auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while	keywords++;
[a-zA-Z_][a-zA-Z_0-9]*	identifiers++;
[+*/%=-]=?	operators++;
.|\n	

%%
int yywrap(){}
main()
{
yylex();
printf("\nKeywords = %d\nIdentifiers = %d\nOperators = %d\n",keywords,identifiers,operators);
}
