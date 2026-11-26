%{
#include <stdio.h>
int vowels =0;
int consonants=0;
%}

%%
[aeiouAEIOU]	{vowels++;}
[a-zA-Z]	{consonants++;}
[ \t\n]		;
.		;
%%

int main(){
	printf("Enter the string :");
	yylex();

	printf("number of Vowels is :%d\n",vowels);
	printf("number of Consonants is :%d\n",consonants);

	return 0;
}
