#!/bin/bash

# Use prodigal to predict genes

cd /home/a6034850/code/prodigal.v2_60/

inputFiles="/home/a6034850/metagenomes/metaHIT/"
outdir="/home/a6034850/metagenomes/metaHIT/results/"
inFileExt=".seq.fa"
prodFileExt=".prodigal"

#process first 9 separatyely because extension is different for double figures 
prefix="MH000"
for ((i=1; i<=9; i++ ))
do
./prodigal -a $outdir$prefix$i$prodFileExt -i $inputFiles$prefix$i$inFileExt -p meta -o MH000$i.prodigal.genes
done

prefix="MH00"
for ((i=10; i<=86; i++ ))
do
./prodigal -a $outdir$prefix$i$prodFileExt -i $inputFiles$prefix$i$inFileExt -p meta -o MH00$i.prodigal.genes
done

#NEED TO INCLUDE ALL OTHER METAGENOMES IN HERE. DONE IN _2 second file script


