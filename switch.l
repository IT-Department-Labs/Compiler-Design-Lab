alpha [a-zA-Z]
digit [0-9]
%%
[ \n\t]
switch return SWITCH;
case return CASE;
break return BREAK;
{digit}+ return NUM;
default return DEFAULT;
{alpha}({alpha}|{digit})* return ID;
. return yytext[0];
%%
