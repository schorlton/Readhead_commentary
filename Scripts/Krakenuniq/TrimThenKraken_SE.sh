filename="${1%.*}"
filename="${filename%.*}"
#filename="${filename%.*}"

fastp -w 8 -i $1 -o $filename'.fastp.1.fastq' -l 31 -y -5 -r -M 3 -R '"'$filename'"'

krakenuniq --db ~/Programs/krakenuniq/all_together/ --threads 8 --report-file $filename'.tsv' $filename'.fastp.1.fastq' > $filename'.krakreads' \
	&& rm $filename'.fastp.1.fastq'
mv fastp.json $filename'.json'
mv fastp.html $filename'.html'
