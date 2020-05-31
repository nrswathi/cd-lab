%{
#include "y.tab.h"
%}
%%
if	return IF;
 /*else return ELSE;*/
"("	return '(';
")"	return ')';
"{"	return '{';
"}"	return '}';
[=+><;-]	return yytext[0];
[a-zA-z]+ return EXP;
[0-9]+ return NUM;
[ \t]	return SPACE;
\n 
%%
int yywrap(){
    return 1;
}
