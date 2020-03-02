#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define Max(A,B) ((A)>(B)?(A):(B))
#define Min(A,B) ((A)>(B)?(B):(A))

int main(void){
	srand((unsigned int)time(NULL));
	int x=0,y=0,z=0;
	int count = 0;
	int n = 100000;
	for(int i=0;i<n;i++){
		do{
			x = rand()%6+1;
			y = rand()%6+1;
			z = rand()%6+1;
		}while(x==y || y==z || x==z);
		
		if(Min(Min(x,y),z)==3)
			count++;
	}
	printf("result : |%f|\n",(float)count/n);
	return 0;
}
