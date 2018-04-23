#include<stdlib.h>
#include<stdio.h>


int main(){

	FILE * fin;
	FILE * fout;
	fin = fopen("test.fastq", "r");
	fout = fopen("non.fastq", "w");

	
	int c;
	c = fgetc(fin);

	while(1){

		if(feof(fin)){break;}
		if(c=='N'){fputc('G',fout);}
		else{fputc(c,fout);}
		c = fgetc(fin);
	
	}

	fclose(fin);
	fclose(fout);


	return 0;

}
