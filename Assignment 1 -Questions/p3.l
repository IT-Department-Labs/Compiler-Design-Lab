/*prog to replace each letter with the one 5 places later*/

%{#include<stdio.h>
int i;
%}

lower [a-z]
upper [A-Z]

%%

{lower} {
yytext[i]=(yytext[i]+5);
if(yytext[i]>122)
yytext[i]=yytext[i]-26;
ECHO;
}

{upper} {
yytext[i]=(yytext[i]+5);
if(yytext[i]>90)
yytext[i]=yytext[i]-26;
ECHO;
}
%%

main()
{

yylex();
}

int yywrap()
{
return 1;
}