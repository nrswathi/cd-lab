%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}
%token IF ELSE EXP NUM SPACE
%%
S:IF A B {count++;}
;
A:'('E')';
E:EXP Z NUM
 |EXP Z EXP
 |EXP U
 |SPACE
 |EXP
 |NUM
 ;
Z:'='|'>'|'<'|'<''='|'>''='|'=''+'|'=''-'|'=''=';
U:'+''+'|'-''-';
B:'{'B'}'
 |S
 |E';'B
 |EXP SPACE S
 |
 ;
%%
int main()
{
	yyparse();
	printf("No of nested if: %d\n",count);
}
int yyerror()
{
	printf("ERROR\n");
	exit(0);
}
