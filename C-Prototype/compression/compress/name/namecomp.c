#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(){
	int space;
	for(space = 1; space < 11; space++){
	
		FILE * fp_in;
		FILE * fp_out;

		char command[50];
		sprintf(command, "./nameparse %d > temp", space);
		system(command);
		fp_in = fopen("temp","r");
		fp_out = fopen("name.gc","w");

		int count = 0;
		char hold[20];
		char cmp[20];
		while(fgets(cmp,20,fp_in)!=NULL){
			strcpy(hold,cmp);
			while(!strcmp(hold,cmp)){
				count++;
				if(fgets(cmp,20,fp_in)==NULL){break;}
			}
			printf("%s%d\n", hold, count);
			count = 0;
			
		}
		printf("#####\n");
	}



	return 0;
}
