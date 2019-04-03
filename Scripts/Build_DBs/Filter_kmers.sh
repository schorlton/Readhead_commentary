##Download Genbank hg19 transcripts (coding and non-coding)
## Copy hg19 into directoy, combine with transcripts and make blast DB

wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_19/gencode.v19.pc_transcripts.fa.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_19/gencode.v19.lncRNA_transcripts.fa.gz
pigz -d *
cp ../../hg19.fa ./
cat * > Combined_hg19ref.fa
makeblastdb -dbtype nucl -in Combined_hg19_cDNA.fa

