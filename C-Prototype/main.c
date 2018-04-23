#include<stdlib.h>
#include<string.h>
#include<stdio.h>

int FQcompress();
int FQdecompress();

int main(int argc, char ** argv){

	if(!strcmp(argv[1],"-c")){FQcompress();}
	else if(!strcmp(argv[1],"-d")){FQdecompress();}

return 0;
}


int FQcompress(){

	system("./processing/fpre");
	system("./compression/compress/gene/in_filter");
	system("./compression/compress/name/name_compressor");
	system("gzip -f qual.tst");
	system("gzip -f compressed.gc");
	system("gzip -f compressed.nc");
	system("zip FUC.zip compressed.gc.gz compressed.nc.gz qual.tst.gz");
	system("rm *tst temp* qual.tst.gz compressed.gc.gz compressed.nc.gz");

return 0;
}


int FQdecompress(){
	system("unzip FUC.zip");
	system("gzip -d compressed.gc");
	system("./compression/decompress/gene/out_filter");
	system("gzip -d compressed.nc.gz");
	system("./compression/decompress/name/name_decompressor");
	system("gzip -d qual.tst.gz");
	system("./processing/fpost");
	system("rm *zip compressed* temp* *tst");
	system("");
	system("");


return 0;
}
