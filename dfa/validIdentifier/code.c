#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main(){
	char s[100];
	int state=0;

	printf("Enter the identifier :");
	scanf("%s",s);

	for(int i=0 ; s[i]!='\0' ; i++ ){
		switch(state){
			case 0:
				if(isalpha((unsigned char)s[i]) || s[i]=='_')
					state=1;
				else
					state=2;
				break;
			case 1:
				if(isalnum((unsigned char)s[i]) || s[i]=='_')
					state=1;
				else
					state=2;
				break;
			case 2:
				state=2;
				break;

		}
	}
	if(state==1)
		printf("Valid string");
	else
		printf("Invalid string");
}

