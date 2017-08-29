%{
	int count = 0;
	int max = 0;
%}

alpha[a-zA-Z]
space[ \t\n]
digit[0-9]

%%
({alpha}|{digit}) {count++; max = (max < count) ? count : max;}
{space} {count=0;}
%%

int main() {
	yylex();
	printf("\nMax Count=%d\n", max);

	return 0;
}