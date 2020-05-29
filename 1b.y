%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
%}
%%
S: B C
;
B: 'a' B 'b'
|
;
C: 'b' C 'c'
|
;
%%
int main(){
	yyparse();
	printf("Valid\n");

}

int yyerror(){
	printf("Invalid");
    exit(0);
}
