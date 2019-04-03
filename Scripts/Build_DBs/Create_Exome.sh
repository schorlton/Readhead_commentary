##Download exome from UCSC tables
#sort bed
#merge exons while preserving strand
#extract exome from hg19 fasta using bedtools

bedtools merge -s -c 6 -o distinct -i Gencode.sorted.bed > Stranded_Exome.bed
