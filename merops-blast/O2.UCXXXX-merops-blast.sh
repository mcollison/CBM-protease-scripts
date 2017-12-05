#!/bin/bash

#format merops database for blast
cd /home/a6034850/databases/MEROPS/
# to change input from peptide to nucleotide change -p from T to F
#   formatdb -p T -i MEROPS_pepunit.lib
# If nucleotide should move everything with *.n* extension
#   mv *.p* pepunitBlastDB/
#   mv formatdb.log pepunitBlastDB/
#   chmod go+rw pepunitBlastDB/*.*

#blast metaHIT files against MEOPS
inputFiles="/home/a6034850/metagenomes/metaHIT/"
outdir="/home/a6034850/metagenomes/metaHIT/results/"
fileExt=".seq.fa"
blastExt=".merops.blast"

prefix="O2.UC-"
for ((i=1; i<=24; i++ ))
do
inputFile="$inputFiles$prefix$i$fileExt"
outputFile="$outdir$prefix$i$fileExt$blastExt"
blastall -p blastx -d pepunitBlastDB/MEROPS_pepunit.lib -i $inputFile -m 8 -a 48 >$outputFile
done

