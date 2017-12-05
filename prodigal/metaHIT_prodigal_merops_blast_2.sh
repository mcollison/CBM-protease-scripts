#!/bin/bash

# Use prodigal to predict genes

cd /home/a6034850/code/prodigal.v2_60/

inputFiles="/home/a6034850/metagenomes/metaHIT/"
outdir="/home/a6034850/metagenomes/metaHIT/results/"
inFileExt=".seq.fa"
prodFileExt=".prodigal"

#process first 9 separatyely because extension is different for double figures
prefix="O2.UC-"
for ((i=1; i<=24; i++ ))
do
./prodigal -a $outdir$prefix$i$prodFileExt -i $inputFiles$prefix$i$inFileExt -p meta -o O2.UC-$i.prodigal.genes
done

prefix="V1.CD-"
for ((i=1; i<=15; i++ ))
do
./prodigal -a $outdir$prefix$i$prodFileExt -i $inputFiles$prefix$i$inFileExt -p meta -o V1.CD-$i.prodigal.genes
done

prefix="V1.UC-"
for ((i=1; i<=21; i++ ))
do
./prodigal -a $outdir$prefix$i$prodFileExt -i $inputFiles$prefix$i$inFileExt -p meta -o V1.UC-$i.prodigal.genes
done




