#include <stdio.h>
#include <string.h>

int main(){
	char s[100];
	int state=0;
	
	printf("Enter the string :");
	scanf("%s",s);

	for(int i=0;s[i]!='\0';i++){
		if(s[i]!='1' && s[i]!='2' && s[i]!='3'){
			printf("invalid string !!!!!!!");
			return 0;
		}
		switch(state){
			case 0:
				if(s[i]=='1')
					state=1;
				else
					state=4;
				break;
			case 1:
				if(s[i]=='1')
					state=1;
				else if(s[i]=='2')
					state=2;
				else
					state=3;
				break;
			case 2:
				if(s[i]=='2')
					state=2;
				else if(s[i]=='3')
					state=3;
				else
					state=4;
				break;
			case 3:
				state=4;
				break;
			case 4:
				state=4;
				break;
		}
	}
	if(state==3)
		printf("valid string ");
	else
		printf("invalid string");
}

