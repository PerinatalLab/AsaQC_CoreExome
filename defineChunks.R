#!/usr/bin/Rscript

#args=commandArgs(TRUE)
#inFile=args[1]
inFile="./torin_FINAL_150609_87fb294"

####################################################################
# This procedure is necessary, since Impute2 requires chromosomes to be fed in chunks,
# and I don't want the chunks to be non-smart (spanning big gaps)
# This script generates ~500 chunks, each sized ~6 Mb.  Jonas
####################################################################

# note: created based on I-can't-remember-what type of genotyping chip, 
# thus you might need to customize it for your particular chip: include 
# some script checking previously skipped chromosomes (e.g., chr 17 18 19)
# that were uniformly covered with SNPs in my project (and needed no smart chunking).

# note: assumes that your bim file is in hg19 coordinate system (same as 1kG ref)

# note:  outputs a text file with chunk coordinated and an image of all chunks on chromosomes.



###############################################################
# 1)  FIND WHAT POSITION IS THE HIGHEST FOR EACH CHROMOSOME
dat=data.frame(chr=seq(23),max=NA)
      # autosomes
for (i in 1:23) {
        print(i)
        nam=paste("~/soft/ref1000G/ALL_1000G_phase1integrated_v3_chr",i,"_impute.legend.gz",sep="")
        fil=read.table(gzfile(nam),header=T, sep=" ", colClasses=c("NULL","numeric",rep("NULL",10)))
        dat[i,"max"]=max(fil$POSITION)
}

      # chromosome X
#nam="~/soft/ref1000G/ALL_1000G_phase1integrated_v3_chrX_nonPAR_impute.legend.gz"
#fil=read.table(gzfile(nam),header=T, sep=" ", colClasses=c("NULL","numeric",rep("NULL",10)))
#dat[23,"max"]=max(fil$position)


##############################################################
# 2) READ the SNP map
bim=read.table(paste(inFile,".bim",sep=""))


##############################################################
# 2) explore each chromosome

par(mfrow=c(4,1))
for (chr in 1:23) {
        plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),xaxt="n",yaxt="n",main=chr)
        segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
        mn= min(bim[bim$V1==chr,4])
        mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
        mx= max(bim[bim$V1==chr,4])
        mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
        pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
        points(pnts,rep(0.8,length(pnts)),pch=19,col="red")
        abline(v=c(mn,mx))
}

###############################################################
# 3)  CREATE THE INITIAL CHUNK MAP (to be tuned later)
m=matrix(NA,nr=23,nc=50)  # collector of CHUNK cuts (gap coordinates)
for (chr in 1:23) {
  mn= min(bim[bim$V1==chr,4])  # minimum coordinate on this chromosome
  mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
  mx= max(bim[bim$V1==chr,4])
  mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] ) # prevent too big chromosome
  pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) # make chunks of equal sizes
  pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts
}

###############################################################
#  4) manually deal with problematic chromosomes

##############################  chr1
par(mfrow=c(1,1))
chr=1
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=1.3e8
pos=bim[bim$V1==chr,4]
lft=max(pos[pos<mid])
lft=ifelse( (lft+2e6)<rgh , lft+2e6 , lft+1e6 )  # prevent negative values
rgh=min(pos[pos>mid])
rgh=ifelse( (rgh-2e6)>lft , rgh-2e6 , lft-1e6 )  # prevent negative values
abline(v=c(lft,rgh),col="red")

pnts1=seq(mn,lft,by= (lft-mn)/floor((lft-mn)/6e6)) 
pnts2=seq(rgh,mx,by= (mx-rgh)/floor((mx-rgh)/6e6)) 
pnts=unique(c(pnts1,pnts2))
points(pnts,rep(0.75,length(pnts)),pch=19,col="red")

pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts

##############################  chr2
par(mfrow=c(1,1))
chr=2
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=0.93e8
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts

##############################  chr4
par(mfrow=c(1,1))
chr=4
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=0.513e8
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts


##############################  chr7
par(mfrow=c(1,1))
chr=7
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=6e7
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts

##############################  chr8
par(mfrow=c(1,1))
chr=8
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=4.5e7
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts


par(mfrow=c(1,1))

##############################  chr9
chr=9
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=6e7
pos=bim[bim$V1==chr,4]
lft=max(pos[pos<mid])
lft=ifelse( (lft+2e6)<rgh , lft+1e6 , lft+0.5e6 )  # prevent negative values
rgh=min(pos[pos>mid])
rgh=ifelse( (rgh-2e6)>lft , rgh-2e6 , lft-1e6 )  # prevent negative values
abline(v=c(lft,rgh),col="red")

pnts1=seq(mn,lft,by= (lft-mn)/floor((lft-mn)/8e6)) 
pnts2=seq(rgh,mx,by= (mx-rgh)/floor((mx-rgh)/7e6)) 
pnts=unique(c(pnts1,pnts2))
points(pnts,rep(0.75,length(pnts)),pch=19,col="red")
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts

##############################  chr10
par(mfrow=c(1,1))
chr=10
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=4.1e7
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts


##############################  chr11
par(mfrow=c(1,1))
chr=11
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=5.3e7
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts



##############################  chr16
chr=16
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=4e7
pos=bim[bim$V1==chr,4]
lft=max(pos[pos<mid])
lft=ifelse( (lft+2e6)<rgh , lft+1e6 , lft+.5e6 )  # prevent negative values
rgh=min(pos[pos>mid])
rgh=ifelse( (rgh-2e6)>lft , rgh-1e6 , lft-.5e6 )  # prevent negative values
abline(v=c(lft,rgh),col="red")

pnts1=seq(mn,lft,by= (lft-mn)/floor((lft-mn)/6e6)) 
pnts2=seq(rgh,mx,by= (mx-rgh)/floor((mx-rgh)/6e6)) 
pnts=unique(c(pnts1,pnts2))
points(pnts,rep(0.75,length(pnts)),pch=19,col="red")
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts


##############################  chr18
chr=18
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=1.7e7
pos=bim[bim$V1==chr,4]
lft=max(pos[pos<mid])
rgh=min(pos[pos>mid])
lft=ifelse( (lft+2e6)<rgh , lft+1e6 , lft+.5e6 )  # prevent negative values
rgh=ifelse( (rgh-2e6)>lft , rgh-1e6 , lft-.5e6 )  # prevent negative values
abline(v=c(lft,rgh),col="red")

pnts1=seq(mn,lft,by= (lft-mn)/floor((lft-mn)/6e6)) 
pnts2=seq(rgh,mx,by= (mx-rgh)/floor((mx-rgh)/6e6)) 
pnts=unique(c(pnts1,pnts2))
points(pnts,rep(0.75,length(pnts)),pch=19,col="red")
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts


##############################  chr20
par(mfrow=c(1,1))
chr=20
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")

mid=2.8e7
abline(v=mid,col="red")

pnts1=seq(mn,mid,by=(mid-mn)/floor((mid-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(mid,mx,by=(mx-mid)/floor((mx-mid)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts



##############################  chr21
par(mfrow=c(1,1))
chr=21
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-1e6)<=0 , 0 , (mn-1e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts

##############################  chr23
par(mfrow=c(1,1))
chr=23
plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),yaxt="n",main=chr)
segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.7)
mn= min(bim[bim$V1==chr,4])
mn=ifelse( (mn-2e6)<=0 , 0 , (mn-2e6) )  # prevent negative values
mx= max(bim[bim$V1==chr,4])
mx=ifelse(  abs(dat[dat$chr==chr,"max"]-mx)>2e6  , (mx+2e6), dat[dat$chr==chr,"max"] )
pnts=seq(mn,mx,by= (mx-mn)/floor((mx-mn)/6e6)) 
points(pnts,rep(0.8,length(pnts)),pch=19,col="red")
abline(v=6e7,col="red")


md=6e7
pnts1=seq(mn,md,by=(md-mn)/floor((md-mn)/6e6)) 
points(pnts1,rep(0.77,length(pnts1)),pch=19,col="red")
pnts2=seq(md,mx,by=(mx-md)/floor((mx-md)/6e6)) 
points(pnts2,rep(0.77,length(pnts2)),pch=19,col="red")
pnts=sort(unique(c(pnts1,pnts2)))
pnts=c(pnts,rep(NA,50-length(pnts)))
m[chr,]=pnts



###############################################################
#  5) PREVIEW RESULTS


# explore each chromosome and visually check whether chunking was successful

par(mfrow=c(4,1))
for (chr in 1:23) {
  plot(NA,xlim=c(0,max(bim[bim$V1==chr,4])),ylim=c(0,1),xaxt="n",yaxt="n",main=chr)
  segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.8)
  points(m[chr,],rep(0.9,length(pnts)),pch=19,col="red")
}


###############################################################
#  6) CREATE CHUNK LIST WITH COORDINATES IN STANDARD FORMAT

CHUNKS=NULL
for (chr in 1:23) {
  cts=round(m[chr,][!is.na(m[chr,])],0) # cut points
  cts=sort(cts)
  
  chunks=NULL
  for (i in 1:(length(cts)-1)) {
  chunks=rbind(chunks, data.frame(chr=chr, left=cts[i]+1,right=cts[i+1]) )
  }
  
  CHUNKS=rbind(CHUNKS,chunks)
}


###############################################################
#  6) CLEAN THE CHUNK LIST (from empty chunks)

# if chunk has no SNPs - delete the chunk
for (i in 1:dim(CHUNKS)[1]) {
  ch=CHUNKS[i,]
  pos=bim[bim$V1==ch$chr,"V4"]
  if (sum((pos>ch$left)&(pos<ch$right))==0) {CHUNKS[i,]=NA}
}

CHUNKS=CHUNKS[ !is.na(CHUNKS$left),]
dim(CHUNKS)
options("scipen"=100,digits=10)
write.table(CHUNKS,"./prephased/chunks_output.txt",
            row.names=F,col.names=T,quote=F,sep="\t")

dim(CHUNKS)

###############################################################
#  6) PREPARE THE VISUAL MAP OF CHUNKS
mx=max(bim$V4)
jpeg("./prephased/chunk_map.jpeg",width=30,height=20,units="cm",res=300)
par(mfrow=c(23,1), mar=c(0, 4, 0, 1) + 0.1)
for (chr in 1:23) {
  plot(NA,xlim=c(0,mx),ylim=c(0,1),xaxt="n",yaxt="n",xlab=NA,ylab=chr)
  segments(x0= bim[bim$V1==chr,4], x1=   bim[bim$V1==chr,4], y0=0,y1=0.5)
  points(m[chr,],rep(0.5,length(pnts)),pch=19,col="red")
  texdat=data.frame(CHUNKS,sq=seq(dim(CHUNKS)[1]),mid=as.numeric(apply(CHUNKS[,2:3],1,mean)))
  sub=texdat[texdat$chr==chr,]
  text(x=sub$mid,y=rep(0.75,dim(sub)[1]),labels=sub$sq)
}
dev.off()

