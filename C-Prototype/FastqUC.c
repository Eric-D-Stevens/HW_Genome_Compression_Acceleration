#include<stdlib.h>
#include<string.h>
#include<stdio.h>

int FQcompress(char * input_file, char * output_file);
int FQdecompress(char * input_file, char * output_file);

int main(int argc, char ** argv){

	if(argc != 4){
		printf(" ---- ERROR ----\nUsage: ./FastqUC < -c/-d > <input_file> <output file>\n");
		exit(-1);
	}

	char * input_file = argv[2];
	char * output_file = argv[3];


	if(!strcmp(argv[1],"-c")){FQcompress(input_file, output_file);}
	else if(!strcmp(argv[1],"-d")){FQdecompress(input_file, output_file);}

	return 0;
}


int FQcompress(char * input_file, char * output_file){
	char runbuff[100];
	sprintf(runbuff,"./processing/fpre %s", input_file);
	system(runbuff);
	system("./compression/compress/gene/in_filter");
	system("./compression/compress/name/name_compressor");
	system("gzip -f qual.tst");
	printf("fail ");
	system("gzip -f compressed.gc");
	system("gzip -f compressed.nc");
	sprintf(runbuff,"zip %s.zip compressed.gc.gz compressed.nc.gz qual.tst.gz", output_file);
	system(runbuff);
	system("rm *tst temp* qual.tst.gz compressed.gc.gz compressed.nc.gz");

	return 0;
}


int FQdecompress(char * input_file, char * output_file){
	char runbuff[100];
	sprintf(runbuff,"unzip %s", input_file);
	system(runbuff);
	system("gzip -d compressed.gc");
	system("./compression/decompress/gene/out_filter");
	system("gzip -d compressed.nc.gz");
	system("./compression/decompress/name/name_decompressor");
	system("gzip -d qual.tst.gz");
	sprintf(runbuff, "./processing/fpost %s", output_file);
	system(runbuff);
	system("rm *zip compressed* temp* *tst");
	system("");
	system("");

	return 0;
}
