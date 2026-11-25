#include <stdio.h>
#include <string.h>

int main(){
	char s[100];
	int state=0;

	printf("Enter the string :");
	scanf("%s",s);

	for(int i=0 ; s[i]!='\0' ; i++){
		if(s[i]!='a' && s[i]!='b' && s[i]!='c'){
			printf("invalid stiring");
			return 0;
		}
		switch(state){
			case 0:
				if(s[i]=='a')
					state=1;
				else
					state=0;
				break;
			case 1:
				if(s[i]=='a')
					state=1;
				else if(s[i]=='b')
					state=2;
				else
					state=0;
				break;
			case 2:
				if(s[i]=='a')
					state=1;
				else if(s[i]=='b')
					state=0;
				else
					state=3;
				break;
			case 3:
				state=3;
				break;
		}
	}
	if(state==3)
		printf("string accepted");
	else
		printf("string rejected");
}

