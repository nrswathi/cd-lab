%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}
%token FOR EXP NUM SPACE
%%
S:FOR A B {count++;}
;
A:'('E';'E';'E')'
;
E:EXP Z NUM
 |EXP Z EXP
 |EXP U
 |SPACE
 |EXP
 |NUM
 |
 ;
Z:'='|'>'|'<'|'<''='|'>''='|'=''+'|'=''-'|'=''=';
U:'+''+'|'-''-';
B:'{'B'}'
 |S
 |EXP SPACE S
 |E';'B
 |
 ;
%%
int main()
{
	yyparse();
	printf("No of nested for: %d\n",count);
}
int yyerror()
{
	printf("ERROR\n");
	exit(0);
}
