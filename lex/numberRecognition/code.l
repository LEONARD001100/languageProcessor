%{
	#include <stdio.h>	
%}

%%
[0-9]+	{printf("Number found %s\n",yytext);	}
.	;
%%

int main(){
	yylex();
	return 0;
}
