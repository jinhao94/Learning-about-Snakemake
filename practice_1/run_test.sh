## test1 
<<'!'
Note: Rise sample missing error when run as "snakemake -s Sankefile_test1 -np  mapped_reads/{happy_1}.bam".
The out put files must be given when execute the Sankefile_test1. (因为没有指明输入文件，只能让snake从output回推)
!
snakemake -s Sankefile_test1 -np  mapped_reads/{happy_1,happy_2}.bam

## test2
<<'!'
You can also assign the input file.
!
snakemake -s Sankefile_test2 -np
## tese3
