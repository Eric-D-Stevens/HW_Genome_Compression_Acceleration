#include <stdio.h>
#include <string.h>
#include <stdint.h>


int main(int argc, char ** argv){
	
	// Input output file pointers
	FILE * fp_in;
	FILE * fp_out;

	

	// Open files	
	fp_in = fopen( "./gene.tst" , "r" );
	fp_out = fopen( "compressed.gc" , "w" );
	
	// Compression characters
	int big[4];
	int small;

	// pointers for data manipulation
	int *bp =  &big[0];
	int *sp =  &small;

	big[0]=fgetc(fp_in);		
	
	while(!feof(fp_in)){
		// check for new line character
		if(big[0] == '\n'){
			big[0]=fgetc(fp_in);
		}
		// Load buffer 'big'
		big[1]=fgetc(fp_in);		
		big[2]=fgetc(fp_in);		
		big[3]=fgetc(fp_in);		

		// filter and relocate
		*(bp+0) = (*(bp+0)&(0x6))<<5;			
		*(bp+1) = (*(bp+1)&(0x6))<<3;			
		*(bp+2) = (*(bp+2)&(0x6))<<1;			
		*(bp+3) = (*(bp+3)&(0x6))>>1;			

		// combine into single char
		*sp = *(bp+0) | *(bp+1) | *(bp+2) | *(bp+3);

		if(feof(fp_in)){break;}
		// put compressed char into output file	
		fputc((int)small, fp_out);
		
		// get next starting character
		big[0] = fgetc(fp_in);
		//printf("\n %c = %x", big[0], (int)big[0]);
		
	}
	
	// end output file
	//fputc((int)(EOF), fp_out);
	fclose(fp_in);
	fclose(fp_out);
}
