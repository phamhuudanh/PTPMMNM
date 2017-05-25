#include <stdio.h>
#include "tinhtoan.h"

//chuyen doi kieu string ve kieu int
int ConvertStringToInt(char *a){
	int i=0;
	int result=0;
	while(a[i]!='\0'){
	int x=(int)a[i]-48;
	result=result*10+x;
	i++;
	}
	return result;
}


int main(int argc, char **argv){
	//Kiem tra do dai tham so
	if (argc==4){
		printf("%s %s %s ", argv[1],argv[3],argv[2]);

		int a=ConvertStringToInt(argv[1]);
		int b=ConvertStringToInt(argv[2]);

		if (*argv[3]=='+')
		printf("\n%d\n",cong(a,b));
	
		if (*argv[3]=='-')
		printf("\n%d\n",tru(a,b));
		
		if (*argv[3]=='*')
		printf("\n%d\n",nhan(a,b));
		
		if (*argv[3]=='/')
		printf("\n%f\n",chia(a,b));
	}

	else{
		printf("Vui long nhap tham so a va b\n[cong]	1 2 +\n[tru]	1 2 -\n[nhan]	1 2 /\n[chia]	1 2 \\*\n");
	}
}
