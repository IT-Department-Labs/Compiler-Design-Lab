%{
	#include <stdio.h>
	int vowels = 0;
	int consonants = 0;
%}

%%
[aeiouAEIOU]	vowels++;
[a-zA-Z]		consonants++;	
%%

int yywrap() {
	return 1;
}

main() {
	printf("Enter the string\n:");
	yylex();
	printf("\nNumber of vowels: %d\n",vowels);
	printf("Number of consonants: %d\n",consonants);
}