krakenuniq-download --threads 8 --dust --db all_together refseq/vertebrate_mammalian/Any/species_taxid=9606 contaminants refseq/viral/Any
krakenuniq-build --db all_together --kmer-len 31 --threads 8 --taxids-for-genomes --taxids-for-sequences
