#include <stdio.h>
#include <string.h>
#include <stdint.h>

#define LINE_SIZE 100
#define FILE_SIZE 100000000


int main(int argc, char ** argv){
	
	// Input output file pointers
	FILE * fp_in;
	FILE * fp_out;

	

	// Open files	
	fp_in = fopen( "compressed.gc" , "r" );
	fp_out = fopen( "gene.tst" , "w" );
	
	// Compression characters
	int b[4];
	int s;

	uint64_t fcount=1;	
	int count;
		
	s = fgetc(fp_in);
	while(s != EOF){
		if(feof(fp_in)){break;}
		for(count=0; count<(LINE_SIZE/4); count++){

			// pull char into s
			
			// split
			if(s==EOF){break;}
			b[0]=((s & 0x03)<<1)|0x41;
			b[1]=((s & 0x0c)>>1)|0x41;
			b[2]=((s & 0x30)>>3)|0x41;
			b[3]=((s & 0xc0)>>5)|0x41;

			if(feof(fp_in)){break;}
			
			// replace e with t
			int t_search;
			for(t_search=0; t_search<4; t_search++){
				if(b[t_search]=='E'){b[t_search]='T';}
			}
			
			// write chars
			fputc(b[3],fp_out);
			fputc(b[2],fp_out);
			fputc(b[1],fp_out);
			fputc(b[0],fp_out);
			
			
			printf("%c%c%c%c",b[3],b[2],b[1],b[0]);
		

			s = fgetc(fp_in);
			if(feof(fp_in)){break;}
		}
		
		printf("\n");
		fputc('\n',fp_out);
	}

	fclose(fp_in);
	fclose(fp_out);
}
