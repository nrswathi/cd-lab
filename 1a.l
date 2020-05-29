%{
int s=0, c=0, w=0, l=1, flag = 0;
%}
%%
[a-zA-Z]+ {w++; c+= yyleng;flag=0;}
[\t] {s+=3;flag=0;}
[ ] {s++;flag=0;}
[\n] { flag++; if(flag>1) return 0; l++;}
. ;
%%

int main(){
	printf("Enter the string");
	yylex();
	printf("No of lines = %d\nNo of words = %d\nNo of characters = %d\nNo of spaces= %d",l-1,w,c,s);
}

int yywrap(){
return 0;
}
