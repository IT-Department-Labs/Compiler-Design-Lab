%{
	#include<stdio.h>
	int i;
	char *s1;
	char *s2;
%}

string1 {s1} 

%%
({string1}) {
	
	yytext=s2;
	ECHO;
}

%%	

main()
{
printf("Enter string to be replaced: ");
scanf("%s",s1);
printf("Enter string with which %s has to be replaced: ",s1);
scanf("%s",s2);

yylex();
}

int yywrap()
{
return 1;
}
