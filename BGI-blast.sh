#!/bin/bash

#format merops database for blast
#cd /home/a6034850/databases/MEROPS/
# to change input from peptide to nucleotide change -p from T to F
#formatdb -p T -i MEROPS_pepunit.lib
# If nucleotide should move everything with *.n* extension
#   mv *.p* pepunitBlastDB/
#   mv formatdb.log pepunitBlastDB/
#   chmod go+rw pepunitBlastDB/*.*

#blast metaHIT files against MEOPS
inputFiles=/usr/local/apache2/htdocs/cbm-protease/data/cbm-protease-fastas/nr-unannotated/*.fasta
outdir="/usr/local/apache2/htdocs/cbm-protease/data/BGI-blast/"
fileExt=".fasta"
blastExt="-BGI.blast"
BGI="BGI_GeneSet20090523.fa"

for filename in $inputFiles; do
	if [[ $filename == *"C40"* ]] || [[ $filename == *"M23"* ]] || [[ $filename == *"I43"* ]] || [[ $filename == *"M43"* ]] || [[ $filename == *"M60"* ]] || [[ $filename == *"S08"* ]] || [[ $filename == *"S09"* ]] || [[ $filename == *"U69"* ]]; then 
	echo $filename
	else
	outputFile="$filename$blastExt"
	blastall -p tblastn -d $outdir$BGI -i $filename -m 8 -a 48 >$outputFile 
	fi
done
#output files need moving over to outdir after script completion