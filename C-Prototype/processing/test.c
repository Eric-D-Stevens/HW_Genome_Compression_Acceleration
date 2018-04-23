#include <float.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>

unsigned cycles_low, cycles_high, cycles_low1, cycles_high1;
static __inline__ unsigned long long rdtsc(void)
{
    __asm__ __volatile__ ("RDTSC\n\t"
            "mov %%edx, %0\n\t"
            "mov %%eax, %1\n\t": "=r" (cycles_high), "=r" (cycles_low)::
            "%rax", "rbx", "rcx", "rdx");
}

static __inline__ unsigned long long rdtsc1(void)
{
    __asm__ __volatile__ ("RDTSC\n\t"
            "mov %%edx, %0\n\t"
            "mov %%eax, %1\n\t": "=r" (cycles_high1), "=r" (cycles_low1)::
            "%rax", "rbx", "rcx", "rdx");
}


int fsize(char* file);
double get_time(uint64_t start, uint64_t end);





int main(int argc, char *argv[]){
uint64_t start, end;
double time, throughput, file_size;

file_size = (double)fsize("../test.fastq");

char command[10];
strcpy(command, "./fpre");


rdtsc();
//////////////////////////////////////////////////
// TIME IN HERE ///


system(command);



//////////////////////////////////////////////////
	rdtsc1();
	start = ( ((uint64_t)cycles_high << 32) | cycles_low );
	end = ( ((uint64_t)cycles_high1 << 32) | cycles_low1 );
	
	

	time = get_time(start,end);
	printf("\n\nTime:\t\t%f s\n", time);
	printf("File Size:\t%f MB\n", file_size/1000000.0);
	printf("Throughput:\t%f MB/s ", ((file_size/1000000.0)/time));
	printf("\n\n");
	





}


int fsize(char* file) {
  int size;
  FILE* fh;

  fh = fopen(file, "rb"); //binary mode
  if(fh != NULL){
    if( fseek(fh, 0, SEEK_END) ){
      fclose(fh);
      return -1;
    }

    size = ftell(fh);
    fclose(fh);
    return size;
  }

  return -1; //error
}



double get_time(uint64_t start, uint64_t end){
	double time, clock;
	clock = 2670000000.00;
	time = (double)(end-start);
	time = time/clock;
	return time;



}
