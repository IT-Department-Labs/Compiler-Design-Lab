%{
	#include<stdio.h>
	int i,j;
	int max=0;
	char *mstr;
%}

alpha [a-zA-Z]
digit [0-9]
space [ \n\t] 

%%
({alpha}|{digit})*{space} 
{
	if(yyleng>max) {
		max = yyleng;
		mstr=yytext;
		mstr[max-1]='\0';
	}
}
 

%%
main() {
	yylex();
	printf("Length =%d\n",max-1);
	printf("Reverse:");
	for( i=max-2 ; i>=0 ; i--)
		printf( "%c", *(mstr+i));
}
