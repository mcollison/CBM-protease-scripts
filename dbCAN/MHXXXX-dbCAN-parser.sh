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
bash hmmscan-parser.sh $outputDir$prefix$zero$i$dm > $outputDir$prefix$zero$i$dm$ps

done

for ((i=10; i<=86; i++))
do
bash hmmscan-parser.sh $outputDir$prefix$i$dm > $outputDir$prefix$i$dm$ps
done

