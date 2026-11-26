%{
#include <stdio.h>

%}
%%

"{"	{fprintf(yyout,"begin");}
"}"	{fprintf(yyout,"end");}
.	{ECHO;}
\n	{ECHO;}

%%

int main(){
	yyin=fopen("input.txt","r");
	if(yyin==NULL){
		printf("cannot access the file");
		return 0;
	}
	yyout=fopen("output.txt","w");
	if(yyout==NULL){
		printf("cannot wright");
		return 0;
	}
	yylex();

	fclose(yyin);
	fclose(yyout);
	printf("success");
	return 0;
}
