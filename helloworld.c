#include<stdio.h>
#include<stdlib.h>
int main(void)
{
	FILE *file=fopen("/home/enervate/stu.txt","r");
	char *b=(char*)malloc(sizeof(char)*200);
	printf("stu.txt:\n");
	while(fgets(b,100,file)!=NULL)
	{
	printf("%s",b);
	}
	return 0;
}
