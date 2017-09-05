%{
	#include<stdio.h>
	int a=0,s=0,m=0,d=0,ob=0,cb=0;
	int flaga=0,flags=0,flagm=0,flagd=0,flag=0,pflag=0;;
%}

id [a-zA-Z]+
op [+-*/]

%%

{id}	{printf("\n %s is an identifier\n",yytext); 
			pflag=0;}

[+]		{
			if(pflag!=0)
				flag=1;
			else{
				a++;
		 		flaga=1;
		 		pflag=1;
		 	}
		}
[-]		{
			if(pflag!=0)
				flag=1;
			else {s++;
			flags=1;
			pflag=1;}
		}
[*]		{
			if(pflag!=0)
				flag=1;
			else { m++;
			flagm=1;
			pflag=1;}
		}
[/]		{
			if(pflag!=0)
				flag=1;
			else { d++;
			flagd=1;
			pflag=1;}
		}
[(]		{
			ob++;
		}
[)]		{
			cb++;
		}

%%

int main()

{

printf("Enter the expression\n");

yylex();

if(ob-cb==0 && flag==0)

{

printf("Valid expression\n");
printf("\nAdd=%d\nSub=%d\nMul=%d\nDiv=%d\n",a,s,m,d);

printf("Operators are: \n");

if(flaga)

printf("+\n");

if(flags)

printf("-\n");

if(flagm)

printf("*\n");

if(flagd)

printf("/\n");

}

else

{

printf("Invalid expression");

}



return 0;

}


