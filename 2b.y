%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM
%left '+' '-'    //arrange in increaing precedence and in them arrange associativity
%left '/' '*' 
%%
S: I {printf("\nAnswer=%d\n",$$);}
|
;
I: I '+' I {$$ = $1+$3;}
| I '-' I {$$ = $1-$3;}
| I '*' I {$$ = $1*$3;}
| I '/' I {if($3 == 0) yyerror(); else $$=$1/$3;}
| NUM
| '(' I ')' {$$ = $2;} // brackets are not taken as tokens
;
%%

int main()
{
	yyparse();
	printf("Valid\n");
}

int yyerror(){
	printf("Invalid\n");
	exit(0);
}


