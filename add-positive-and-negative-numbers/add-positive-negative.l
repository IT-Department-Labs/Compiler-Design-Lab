%{
	int positive_no = 0;
	int negative_no = 0;
	int positive_fractions = 0;
	int negative_fractions = 0;
%}

DIGIT [0-9]
%%

\+?{DIGIT}+				positive_no++;
-{DIGIT}+				negative_no++;

\+?{DIGIT}*\.{DIGIT}+	positive_fractions++;
-{DIGIT}*\.{DIGIT}+		negative_fractions++;

.;
%%
main() {
	yylex();

	printf("Number of positive numbers: %d\n",positive_no);
	printf("Number of negative numbers: %d\n",negative_no);
	printf("Number of positive fractions: %d\n",positive_fractions);
	printf("Number of negative fractions: %d\n",negative_fractions);
}