%{
#include<stdio.h>
#include<stdlib.h>
%}
%token ID NUM SWITCH CASE BREAK DEFAULT
%right '='

%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'
%%
S    :    ST{printf("\nInput accepted.\n");exit(0);};
      ;
ST  :    SWITCH'('ID')''{'B'}'
      ;
B    :    C
      |    C D
      ;
C  :    C C
    |    CASE NUM':'E';' BREAK';'
    ;
D  :    DEFAULT':'E BREAK';'
    |    DEFAULT':'E
    ;
E    :    ID'='E
    |    E'+'E
    |    E'-'E
    |    E'*'E
    |    E'/'E
    |    ID
    |    NUM
    ;
%%
#include "lex.yy.c"
main()
{
printf("\nEnter the expression: ");
yyparse();
}
