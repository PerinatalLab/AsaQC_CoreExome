#!/usr/bin/Rscript

options(stringsAsFactors=FALSE)
args=commandArgs(TRUE)

sampleFile=args[1]
chr=args[2]
outFile=args[3]

## debugging
#sampleFile="~/soft/ref1000G/ALL_1000G_phase1integrated_v3.sample"
#chr=22
#outFile="~/soft/ref1000G/test/output/22taken"

legendFile=paste(outFile,".legend",sep="")
hapFile=paste(outFile,".hap",sep="")


## create TFAM file from .sample
sample=read.table(sampleFile,h=T)
famIDs=seq(1,dim(sample)[1])
indIDs=paste("ref",seq(1,dim(sample)[1]),sep="")
zeros=matrix(rep(c(0,0),dim(sample)[1]),ncol=2)

groups=sample$group
groups[groups=="EUR"]=1
groups[groups=="AMR"]=2
groups[groups=="AFR"]=3
groups[groups=="ASN"]=4

sexes=sample$sex

tfam=cbind(famIDs,indIDs,zeros,groups,sexes)

write.table(tfam,file=paste(outFile,".tfam",sep=""),row.names=FALSE,col.names=FALSE,quote=FALSE)

## create TPED leftmost columns from .legend

legend=read.table(legendFile, h=F)
nosnps=dim(legend)[1]
chrs=rep(chr,nosnps)
ids=legend$V1
zeros=rep(0,nosnps)
positions=legend$V2

output1=cbind(chrs,ids,zeros,positions)

## recode .haps to letters for TPED
haps=read.table(hapFile)
haps=as.matrix(haps)

uniq0 = unique(legend$V3)
uniq1 = unique(legend$V4)
for (al0 in uniq0){
    index = which(legend$V3==al0)
    haps[index,][haps[index,]=="0"]=al0
}

for (al1 in uniq1){
    index = which(legend$V4==al1)
    haps[index,][haps[index,]=="1"]=al1
}

output2=cbind(output1,haps)
write.table(output2,file=paste(outFile,".tped",sep=""),row.names=FALSE,col.names=FALSE,quote=FALSE)