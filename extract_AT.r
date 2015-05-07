#!/usr/bin/Rscript

args=commandArgs(TRUE)
inFile=args[1]
outDir=args[2]
#inFile="/home/julius/soft/ref1000G/binary/allChr.bim"
#outDir="./"

bim=read.table(inFile)

at=which(bim$V5=="A"&bim$V6=="T")
ta=which(bim$V5=="T"&bim$V6=="A")
gc=which(bim$V5=="G"&bim$V6=="C")
cg=which(bim$V5=="C"&bim$V6=="G")
all=c(at,ta,gc,cg)
all=sort(all)

bad=bim[all,2]

write.table(bad,file=paste(outDir,"bad_snps.txt",sep=""),quote=FALSE,row.names=FALSE)