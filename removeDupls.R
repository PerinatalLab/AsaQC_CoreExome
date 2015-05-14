#!/usr/bin/Rscript

## R script to remove duplicate positions for prephasing
args=commandArgs(TRUE)
inFile=args[1]
outDir=args[2]

bim=read.table(inFile, h=F)
dupls=bim[duplicated(bim$V4),2]

write.table(dupls, file=paste(outDir,"_duplicatedSNPs.txt",sep=""),quote=FALSE,row.names=FALSE,col.names=FALSE)
