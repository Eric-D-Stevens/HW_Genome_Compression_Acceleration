#include <stdlib.h>
#include <stdio.h>
#include <string.h>


int getLine(char* str, FILE * fp);

int main(){


	FILE * f_in;
	FILE * temp[10];

	char field_val[20];
	char run_c[10];
	int run;

	f_in = fopen("compressed.nc","r");
	
	int i = 0;
	char tempstr[10];
	for(i = 0; i<10; i++){
		sprintf(tempstr,"temp%d",i);
		temp[i] = fopen(tempstr,"w");
	}
	i = 0;
	while(getLine(field_val,f_in)){
	//while(fgets(field_val,20,f_in)!=NULL){
		
		if(!strcmp(field_val,"#####")){i++;} // Change feild
		
		else{
			// get run length and convert to int
			fgets(run_c,10,f_in);
			run = atoi(run_c);
			
			// output run
			while(run>0){
				fprintf(temp[i], "%s\n",field_val);
				run--;
			}	
		}
	}	

	fclose(f_in);
	for(i=0; i<10; i++){fclose(temp[i]);}

	// 

	for(i = 0; i<10; i++){
		sprintf(tempstr,"temp%d",i);
		temp[i] = fopen(tempstr,"r");
	}
	
	int check;
	char linechars[10][20];
	for(i=0; i<10; i++){check=getLine(linechars[i],temp[i]);}
	FILE * fp_out;
	fp_out = fopen("name.tst","w");
	while(1){
		if(!check){fclose(fp_out); return 0; }	
		fprintf(fp_out,"%s:%s:%s:%s:%s:%s:%s:%s:%s:%s\n",linechars[0],linechars[1],linechars[2],linechars[3],linechars[4],linechars[5],linechars[6],linechars[7],linechars[8],linechars[9]);
		for(i=0; i<10; i++){check=getLine(linechars[i],temp[i]);}
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


