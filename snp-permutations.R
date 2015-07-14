t=read.table("assocTest//plink_trend.model", h=T)
head(t)
chi=qchisq(1-t$P,1)
median(chi)/qchisq(0.5,1)
chist=qchisq(0.5,1)


fam=read.table("mergedALL_overlapping_withPheno.fam",h=F)

lambda=NULL
for(i in 1:50){
        samples=c(by(fam$V2, fam$V1, FUN=sample,1))
        famS=fam[fam$V2 %in% samples,]
        write.table(famS[,1:2], "sampled.txt",quote=F,row.names=F,col.names=F)
        system("~/soft/plink/plink --bfile mergedALL_overlapping_withPheno --keep sampled.txt --model trend-only --autosome --out assocTest/sampled")
        results=read.table("assocTest/sampled.model", h=T)
        lambda[i]=median(results$CHISQ, na.rm=T)/chist}



t2=read.table("assocTest//plink_trend_fisher.assoc.fisher", h=T)
head(t2)
chi=qchisq(1-t2$P,1)
median(chi)/qchisq(0.5,1)

randomchis=rchisq(10000,1)
randomchis=sort(randomchis)
chi=sort(sample(chi,10000, replace=F))
plot(chi~randomchis)
abline(0,1,col="red")

snps=results$SNP
head(snps)

c1=100
c2=200
N=4*(c1+c2)*c1/c2/(1+c1/c2)^2
N

win=0
while(win<200){
        samples=c(by(fam$V2, fam$V1, FUN=sample,1))
        famS=fam[fam$V2 %in% samples,]
        samplesCase=famS[famS$V6==2,2]
        samplesControl=famS[famS$V6==1,2]
        if(length(samplesCase)>100 | length(samplesControl)>100){
                win=win+1
                samplesCase2=sample(samplesCase,100)
                samplesControl2=sample(samplesControl,100)
                ids=which(famS$V2 %in% samplesCase2 | famS$V2 %in% samplesControl2)
                
                write.table(famS[ids,1:2], "sampled.txt",quote=F,row.names=F,col.names=F)
                system("~/soft/plink/plink --bfile mergedALL_overlapping_withPheno --keep sampled.txt --model trend-only --autosome --out assocTest/sampled")
                system("awk 'FNR==NR{a[$2]=$10; next} {print $0,a[$1]}' assocTest/sampled.model assocTest/perm-all > assocTest/perm-all2")
                system("mv assocTest/perm-all2 assocTest/perm-all")
        }
        print(win)
}

perm=read.table("assocTest//perm-all",h=T)
fun=function(x) median(x,na.rm=T)
mdn=apply(perm[,-1],1,fun)
hist(mdn,breaks=100,col="grey")

funm=function(x) mean(x,na.rm=T)
mn=apply(perm[1:10000,-1],1,funm)
hist(mn)

perm[mdn<0.05,1]