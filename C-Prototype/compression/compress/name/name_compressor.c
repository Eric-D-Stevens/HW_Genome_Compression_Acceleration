#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int getLine(char* str, FILE * fp);

int main(){
		printf("\nENTERED NAME COMPRESSOR\n");
	
			
	int field; // feild of the sequence id 
	FILE * fp_in; // sequence ids output from preprocessor
	FILE * fp_out;
	fp_out=fopen("compressed.nc","w");
	// loops through every field
	for(field = 1; field < 11; field++){
	

		char command[150]; // commands to be executed

		
		// parse out one field 
		sprintf(command, "./compression/compress/name/helpers/nameparse %d > temp", field);
		//sprintf(command, "./helpers/nameparse %d > temp", field);
		system(command);
		fp_in = fopen("temp","r");


		int count = 0;
		char hold[20];
		char cmp[20];
		int read_status;

		read_status = getLine(cmp,fp_in);
		while(read_status){
			strcpy(hold,cmp);
			while(!strcmp(hold,cmp)){
				count++;
				read_status = getLine(cmp,fp_in);
				if(!read_status){break;}
	
			}
			fprintf(fp_out,"%s\n%d\n", hold, count);
			count = 0;
			
		}
		fclose(fp_in);
		fprintf(fp_out,"#####\n");
	}	
		
	fclose(fp_out);



	return 0;
}

int getLine(char* str, FILE * fp){
	int c;
	while(1){
		c = fgetc(fp);
		if(c == '\n'){
			*str = '\0';
			return 1;
		}
		else if(c == EOF){return 0;}
		else{
			*str = c;
			str++;
		}

	}


}

