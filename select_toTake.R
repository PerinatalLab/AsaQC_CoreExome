#!/usr/bin/Rscript

# script to make a vector list of alleles genotyped in both 1000G and our data
# also a 10 % maf in EUR population cutoff is integrated

args=commandArgs(TRUE)
refFile=args[1]
ourFile=args[2]
outFile=args[3]

#refFile="/home/julius/soft/ref1000G/test/output/22.legend"
#ourFile="/home/julius/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipeline/QC_snp_2/data_clean_filtered_FINAL_me.bim"

ref=read.table(refFile, h=T)
our=read.table(ourFile, h=F)
ix=(ref$id %in% our$V2 & ref$eur.maf>0.1)

takeVector=rep("skip",dim(ref)[1])
takeVector[ix]="taketaketake"

write.table(takeVector, file=outFile, quote=FALSE,col.names=FALSE,row.names=FALSE)
