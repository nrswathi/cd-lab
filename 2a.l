%{
#include<stdio.h>
int p=0, n=0, pf=0, nf=0, z=0;
%}
%%
[-+]?[0]+[.]?[0]* {z++;}
[+]?[0-9]+[/][1-9][0-9]* {pf++;}
[-][0-9]+[/][1-9][0-9]* {nf++;}
[+]?[0-9]+[.]? {p++;}
[-][0-9]+[.]? {n++;}
[+]?[0-9]*[.][0-9]+ {pf++;}
[-][0-9]*[.][0-9]+ {nf++;}
[\n] return 0;
%%
int main(){
	printf("Enter the numbers");
	yylex();
	printf("Positive=%d\nNegative=%d\nP-Fraction=%d\nN-Fraction=%d\nZeros=%d",p,n,pf,nf,z);
}
int yywrap(){
	return 0;
}
