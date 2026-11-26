%{
#include <stdio.h>
int character =0;
int word = 0;
int line = 0;
%}

%%
[a-zA-Z0-9]+	{word++;character+=yyleng;	}
[\n]		{line++;		}
[ \t]+		{character+=yyleng;		}
.		{character++;			}

%%

int main(){
printf("Enter the texts :");
yylex();

printf("\nNumber of characters is :%d",character);
printf("\nNumber of lines is :%d",line);
printf("\nNumber of words is :%d",word);

return 0;
}
