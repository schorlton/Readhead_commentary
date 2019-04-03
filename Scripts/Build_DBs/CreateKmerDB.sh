#!/bin/bash
#
# Use KMC to find all k-mers in the 'working virus'
# Cat all other sequences together and calculate their k-mer set
# Subtract the group k-mers from the working virus k-mers
shopt -s extglob
for i in *.fa; do

filename="${i%.*}"	
cat -- !($filename).fa > all_others.fa
kmc -k31 -ci0 -fm $i $i'_working' tmp/
kmc -k31 -ci0 -fm all_others.fa all_others.fa tmp/
kmc_tools kmers_subtract $i'_working' all_others.fa $i'_keep'
kmc_dump $i'_keep' $i'_keep.kmers'
awk '{print ">"FILENAME"_"++count ORS $1}' $i'_keep.kmers' > $i'_keep.fasta'
rm all_others.fa*

done
