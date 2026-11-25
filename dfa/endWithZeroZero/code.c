#include <stdio.h>

int main(){
	char s[100];
	int state = 0;

	printf("Enter the string :");
	scanf("%s",s);

	for(int i=0;s[i] !='\0';i++){
		if(s[i]!='0' && s[i] != '1'){
			printf("Invalid string !!!");
			return 0;
		}
		switch(state){
			case 0 :
				if(s[i]=='0'){
					state=1;	
				}else{
					state=0;
				}
				break;
			case 1 :
				if(s[i]=='0'){
					state=2;	
				}else{
					state=1;	
				}
				break;
			case 3 :
				if(s[i]=='0'){
					state=2;	
				}else{
					state=1;	
				}
				break;
		}
	}
	if(state==2){
		printf("String accepted ");
	}else{
		printf("string not accepted");
	}
}
