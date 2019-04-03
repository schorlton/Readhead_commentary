#!/bin/bash

~/Programs/ART/art_bin_MountRainier/art_illumina -ss HS25 -l 125 -f 99 -na -i hg38_GENCODE_exome.fa -o '50mil.'$1'_' -p -m 350 -s 25
pigz *.fq
