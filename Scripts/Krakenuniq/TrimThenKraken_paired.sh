filename="${1%.*}"
filename="${filename%.*}"
filename="${filename%.*}"

fastp -w 8 -i $1 -I $filename'.r2.fastq.gz' -o $filename'.fastp.1.fastq' -O $filename'.fastp.2.fastq' -l 31 -y --detect_adapter_for_pe -5 -r -c -R '"'$filename'"' -M 3

krakenuniq --db ~/Programs/krakenuniq/all_together/ --threads 8 --report-file $filename'.tsv' --paired $filename'.fastp.1.fastq' $filename'.fastp.2.fastq' > $filename'.krakreads' \
	&& rm $filename'.fastp.1.fastq' \
	&& rm $filename'.fastp.2.fastq'
mv fastp.json $filename'.json'
mv fastp.html $filename'.html'

