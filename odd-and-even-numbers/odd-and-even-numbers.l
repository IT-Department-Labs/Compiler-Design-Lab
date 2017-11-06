%{
	#include <stdio.h>
	#include <stdlib.h>
	int number_1;
	int number_2;
%}

number_sequence [0-9]*

%%

{number_sequence}[0|2|4|6|8] {
	printf("Even number: %d\n",yyleng);
	return atoi(yytext);
}

{number_sequence}[1|3|5|7|9] {
	printf("Odd number: %d\n",yyleng);
	return atoi(yytext);
}

%%

int yywrap() {
	return 1;
}

int main() {
	
}