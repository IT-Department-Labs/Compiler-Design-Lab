/*count of words ending with ab*/

%{
	int count=0;
%}

alpha [a-zA-Z]
digit [0-9]
space [""\t\n" "]

%%


({alpha}|{digit})*ab		{count++;}
.								;


%%

int main()
{
	yylex();
	printf("count=%d\n",count);
	return 0;
}