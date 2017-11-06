%{
	#include <stdio.h>
	int lines = 0, words = 0, small_letters = 0, capital_letters = 0;
	int numbers = 0, special_characters = 0, total = 0;
%}

%%
\n 		{lines++; words++;}
[\t'']	words++;
[A-Z]	capital_letters++;
[a-z]	small_letters++;
[0-9]	numbers++;
. 		special_characters++;
%%

main() {
	yyin = fopen("2.l", "r");
	yylex();

	total = small_letters + capital_letters + numbers + special_characters;
	printf("Contents of the file...\n");
	printf("Lines: %d\n",lines);
	printf("Words: %d\n",words);
	printf("Small Letters: %d\n",small_letters);
	printf("Capital Letters: %d\n",capital_letters);
	printf("Numbers: %d\n",numbers);
	printf("Special Characters: %d\n",special_characters);
	printf("Total: %d\n",total);
}

int yywrap() {
	return(1);
}