# cd-lab

Execute lex as 
lex file.l
cc lex.yy.c
./a.out

Execute yacc as
lex file.l
yacc -d file.y
cc lex.yy.c y.tab.c
./a.out
