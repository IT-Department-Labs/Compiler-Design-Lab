%{
#include<stdio.h>
int vowels=0;
int conso=0;
%}

%%
[aeiouAEIOU] vowels++;
[a-zA-Z] conso++;
%%

main(void) {
	yylex();
	printf("No of consonants=%d\n",conso);
	printf("No of vowels=%d\n",vowels);
}

int yywrap() {
	return(1);
}
