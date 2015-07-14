#!/usr/bin/Rscript
library(multicore)

funA <- function(x) 	{
command=paste("./impute_autosomes.sh",chunks[x,1],chunks[x,2],chunks[x,3],FILE,DIR,sep=" ")
system(command)
}

funX <- function(x)   {
command=paste("./impute_Xchrom.sh ",chunks[x,1],chunks[x,2],chunks[x,3],FILE,DIR,sep=" ")
system(command)
}


args=commandArgs(TRUE)
FILE=args[1]
DIR=args[2]

chunks=read.table(paste(DIR,"prephased/chunks_output.txt",sep=""),header=T)
N<-dim(chunks)[1]
#FILE="ASA_NP3_150513_chr"
#DIR="./150521_a856cd5/"

######################   AUTOSOMES
rowsA<-which(chunks[,1]<23)
mclapply(rowsA,funA,mc.preschedule=FALSE,mc.cores=6)

######################  X CHROMOSOME
rowsX=which(chunks[,1]==23)
mclapply(rowsX,funX,mc.preschedule=FALSE,mc.cores=6)

########## test mode
#sel = rowsA[seq(1,length(rowsA),2)]
#write.table(sel,file="~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipeline/prephased/selected_test.txt",
#                quote=F,row.names=F,col.names=F)
#mclapply(sel,funA,mc.preschedule=FALSE,mc.cores=6)

system("./pipeline_postImpute.sh -o ~/Desktop/2015MAR/torin_new_plink/ -f torin -i 150609_87fb294")