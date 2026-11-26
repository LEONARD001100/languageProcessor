%{
#include <stdio.h>
#include <string.h>
int statements =0;
int assignment =0;
int identifiers =0;
int relational =0;
int keywords =0;
int integers =0;
%}

%%
"int"|"if"|"else"|"return"|"for"|"break"|"case"|"switch"	{keywords++;	}
"=="|"!="|">="|"<="|">"|"<"	{relational++;		}
"="	{assignment++;		}
[0-9]+	{integers++;		}
[a-zA-Z_][a-zA-Z0-9_]*	{identifiers++;		}
;	{statements++;}
[ \t\n]+	;
.		;
%%




int main() {
	yyin=fopen("c_code.txt","r");
	if(yyin==NULL){
		printf("cannot read the c file");
		return 0;
	}
	yylex();

	printf("Statements: %d\n", statements);
	printf("Identifiers: %d\n", identifiers);
	printf("Assignment: %d\n", assignment);
	printf("Relational: %d\n", relational);
	printf("Keywords: %d\n", keywords);
	printf("Integers: %d\n", integers);

	return 0;
}
