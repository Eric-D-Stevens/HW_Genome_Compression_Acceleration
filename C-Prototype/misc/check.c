#include <stdio.h>
#include <stdlib.h>

#define FROM 0
#define TO 100


int main(){

	int count;
	FILE * fp;
	fp = fopen("something.gc", "r");

	for(count = FROM; count < TO; count++){

		printf("\n%x",fgetc(fp));
	}

	return 0;



}
