%{
#include "y.tab.h"
%}
%%
for	return FOR;
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
