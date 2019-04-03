#!/bin/bash

~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS25 -l 125 -f 1 -na -i HHV6A_alt_genes.fa -o HHV6A_MSBB_WES -p -m 350 -s 25
~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS25 -l 100 -f 1 -na -i HHV6A_alt_genes.fa -o HHV6A_MSBB_RNA
~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS20 -l 100 -f 1 -na -i HHV6A_alt_genes.fa -o HHV6A_MAYO_TCX -p -m 250 -s 25
~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS25 -l 125 -f 1 -na -i HHV7_alt_genes.fa -o HHV7_MSBB_WES -p -m 350 -s 25
~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS25 -l 100 -f 1 -na -i HHV7_alt_genes.fa -o HHV7_MSBB_RNA
~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS20 -l 100 -f 1 -na -i HHV7_alt_genes.fa -o HHV7_MAYO_TCX -p -m 250 -s 25

for i in *.fq; do
  seqtk sample -s100 $i 5 > $i'.sample.fq'
  done
