#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define Max(A,B) ((A)>(B)?(A):(B))
#define Min(A,B) ((A)>(B)?(B):(A))

int main(void){
	srand((unsigned int)time(NULL));
	
	int n=100000,xcount=0,ycount=0;
	for(int i=0;i<n;i++){
		if(rand()%10<6)
			xcount++;
		if(rand()%10<5)
			ycount++;
		
	}
	
	printf("result : |%f|\n",(float)count/n);
	return 0;
}
