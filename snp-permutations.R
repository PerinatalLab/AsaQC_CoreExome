t=read.table("assocTest//plink_trend.model", h=T)
head(t)
chi=qchisq(1-t$P,1)
median(chi)/qchisq(0.5,1)

fam=read.table("mtest/data.fam",h=F)

randomchis=rchisq(10000,1)
randomchis=sort(randomchis)
chi=sort(sample(chi,10000, replace=F))
plot(chi~randomchis)
abline(0,1,col="red")


########### ITERATIVE SAMPLING OF FAMILIES #########
## This script is used for analyzing data from multiple families.
## One individual per family is sampled, until the required number of controls is reached;
## the remaining families are then used for sampling an equal number of unrelated cases.
## Armitage trend test is then applied for this sample, and p-values for each SNP
## are saved as a new column in the output file.
## Median or average of these values can then be calculated.

library(plyr)
win=0
## select families that have controls
controls=data.frame(fam[fam$V6==1,])

while(win<500){
  ## sample 1 row (FID+IID) from each subgroup according to V1 (FID) = 1 control from each family that has controls
  samplesControl=ddply(controls,.(V1),function(x) x[sample(nrow(x),1),1:2])
  ## sample 180 rows from the controls sampled above (families are already unique)
  samplesControl=samplesControl[sample(nrow(samplesControl),170),]

  ## unsampled families can be used for cases
  freeFams=fam[!(fam$V1 %in% samplesControl$V1) & fam$V6==2,]
  ## sample 1 row from each family for cases
  samplesCase=ddply(freeFams,.(V1),function(x) x[sample(nrow(x),1),1:2])
  
  if(dim(samplesCase)[1]>169){
    ## sample 180 cases from above
    samplesCase=samplesCase[sample(nrow(samplesCase),170),]
  
    famS=rbind(samplesCase, samplesControl)
    write.table(famS, "sampled.txt",quote=F,row.names=F,col.names=F)
    system("~/soft/plink/plink --bfile mtest/data --keep sampled.txt --model trend-only --autosome --out ptest/sampled")
    system("awk 'FNR==NR{a[$2]=$10; next} {print $0,a[$1]}' ptest/sampled.model ptest/perm-all3 > ptest/perm-all4")
    system("mv ptest/perm-all4 ptest/perm-all3")
    win=win+1
  }
  print(win)
}

## attach chromosome numbers
system("paste ptest/perm-all ptest/perm-all3 > ptest/perm-combined")
system("awk 'FNR==NR{a[$2]=$1; next} {print a[$1],$0}' ptest/plinkFisher.assoc ptest/perm-combined > ptest/perm-extended")

out=NULL
mdn=NULL
mn=NULL
## split output by chromosomes
for(chr in 1:23){
  system(paste("awk '$1==",chr,"' ptest/perm-extended > ptest/perm-split-",chr, sep=""))
  perm=read.table(paste("ptest/perm-split-",chr,sep=""),h=F)
  
  fun=function(x) median(x,na.rm=T)
  mdn=apply(perm[,c(-1,-2)],1,fun)
  funm=function(x) mean(x,na.rm=T)
  mn=apply(perm[,c(-1,-2)],1,funm)
  out=rbind(out,cbind(perm[,1:2],mdn,mn))
}
names(out)=c("CHR","SNP","MEDIAN","MEAN")
write.table(out, "ptest/perm-results", quote=FALSE, row.names=FALSE)


## reading the output and analysis
perm=read.table("ptest/perm-all",h=T)
fun=function(x) median(x,na.rm=T)
mdn=apply(perm[,-1],1,fun)
hist(mdn,breaks=100,col="grey")
perm[mdn==min(mdn),1:5]

funm=function(x) mean(x,na.rm=T)
mn=apply(perm[,-1],1,funm)
hist(mn,breaks=100,col="grey")

cor(rankm,rankv)
rankm=rank(mns)
rankv=rank(mn)
plot(rankm,rankv,cex=0.3)

rm(perm)
perm[mdn<0.01,1]
chi=qchisq(mdn,1)
median(chi)/qchisq(0.5,1)
snpp=data.frame(SNP=perm[1],P=mdn)
snpp[mdn<0.01,]
min(mdn)

write.table(snpp, "perm-medians.out", quote=FALSE, row.names=FALSE)

rm(perm)
