%{
#include<stdio.h>
int scan=0;
int prin=0;
%}
sc scanf
pr printf
%%
{sc} {printf("readf");scan++;}
{pr} {printf("writef");prin++;}
. ECHO;
%%

main()
{
yyin = fopen("test.c","r");
yylex();
printf("\nNo. of scans = %d , prints = %d",scan,prin);
}
