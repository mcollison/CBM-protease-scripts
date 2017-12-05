#!/bin/bash
#run from dbCAN directory 
outputDir="/home/matt/dbCAN/"
inputDir="/home/matt/Documents/filtered-merops.prod.blast/"
prefix="MH00"
zero="0"
fileExt=".prod.merops.fasta"
dm=".dm"
out=".out"
ps="ps"

for ((i=1; i<=9; i++))
do 
hmmscan --domtblout $outputDir$prefix$zero$i$dm dbCAN-fam-HMMs.txt $inputDir$prefix$zero$i$fileExt > $outputDir$prefix$zero$i$out
done

for ((i=10; i<=86; i++))
do
hmmscan --domtblout $outputDir$prefix$i$dm dbCAN-fam-HMMs.txt $inputDir$prefix$i$fileExt > $outputDir$prefix$i$out
done

