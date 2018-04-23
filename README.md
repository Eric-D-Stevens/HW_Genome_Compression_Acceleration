# Hardware Compression Acceleration of FASTQ Gene Sequence Files

As we enter the age of low cost, high accuracy next generation gene 
sequencing machines and computational biology, there will be an explosion 
of genitic data. This project seeks to implement a cost effective lossless
 compression / decompression scheme to operate on Illumina FASTQ files and be 
implemented on an FPGA for highly parallel operation.

<br />

In this repository there are two parts. The first part is the C Prototype 
of the project that can be run on any host machine. This allows for the 
development and testing of the design of the compression algorithm for its 
compression ratio and genearl functionality.

<br /> 

The second portion of this repository consists of the Verilog files that 
implement the prototype in HDL. This project was written for use with a
Xilinx development board but the files in this repository are basic verilog
that can be moved elsewhere. 

## System Overview

![alt text](./readme-files/Sys_Block_Diagram.png)

## C Prototype

The C prototype version can be used to see the functionality and compression ratio 
performance of the compression scheme. The goal of this project was to build a 
highly parallel system by utilzing an FPGA. This will obviously not be possible to 
do on a standard cpu. Therefore, while we can still examin the improvement in 
compression ratio, we will not see the speed improvement we would experience by 
implementing the scheme in hardware.

### Usage

Compression:
```
./FastqUC -c filename.fastq
```

Decompression:
```
./FastqUC -d FastqUC.zip
```

## Design

### FASTQ File Input

To understand the compression operations it is important to understand the format 
of the fastq files. In a fastq file there are four line sets that continue to repeat
until the end of the read. These lines are as follows.

1. The name of the specific read.
2. The gene sequence itself.
3. a blank line that can be replaced with another copy of the name.
4. The quality scores which represent the quality of the read.

An example of a fastq file can be seen below:

![alt text](./readme-files/example_fastq.png) 

## Compression

### Preprocessing

Two important things to notice when you are looking at a fastq file is that the data in 
each of the four repeated lines is very different than the data in the other three and 
that, for the most part, the data in like lines (every fourth line) are very similar to 
one and other. Therefore, we can immediately and drastically reduse the entropy of the 
file by seperating it into three files that consist of only like lines. So we go from 
our original fastq file to three seperate files.

<br />

The name file:
![alt text](./readme-files/pre-name.png)

The gene file:
![alt text](./readme-files/pre-gene.png)

The read quality file:
![alt text](./readme-files/pre-qual.png)

These three files can then be fed to hardware compression blocks for seperate and parallel 
compression. There are only three files instead of four because we do not need to compress 
the blank / second name line.

