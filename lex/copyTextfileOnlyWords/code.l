%{
#include <stdio.h>
#include <string.h>
%}

%%

[a-zA-Z]+	{fprintf(yyout,"%s ",yytext);	}
[ \n\t]+	;
[0-9]+		;
.		;

%%

int main(){
	yyin=fopen("input.txt","r");
	if(yyin==NULL){
		printf("cannot open the file")	;
		return 0;
	}
	yyout=fopen("output.txt","w");
	if(yyout==NULL){
		printf("cannot right in file");
		return 0;
	}
	yylex();
	fclose(yyin);
	fclose(yyout);
	printf("copied successfully");
	return 0;	
}
