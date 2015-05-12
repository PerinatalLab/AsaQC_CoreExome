#!/usr/bin/Rscript
library(shiny)
library(methods)

args=commandArgs(TRUE)
inFile=args[1]
outDir=args[2]

#inFile = "~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipeline/pre-QC/data_stats"
#outDir="./"
lmis=read.table(paste(inFile,".lmiss",sep=""),h=T)
totalS=dim(lmis)[1]

hwe=read.table(paste(inFile,".hwe",sep=""),h=T)
hweUNAFF=hwe[which(hwe$TEST=="UNAFF"),]
hweP=-log(hweUNAFF$P,base=10)

frq=read.table(paste(inFile,".frq",sep=""),h=T)
merrors=read.table(paste(inFile,".lmendel",sep=""),h=T,stringsAsFactors=F)

defaults=c(0.02,5,0.1,10)

ui<-bootstrapPage(title="QC plots for cutoff adjustment",
                  div(class="row-fluid",
                      HTML("This tool is provided to visually inspect and adjust
                                 the cutoffs for QC filters. The default cutoff values are: <br />
                                 LMIS=0.02 HWE=0.00001 MAF=0.1 SNP_ME=10 (for SNPs) <br />")
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                        sliderInput("lmiss_cutoff",
                                    "LMISS cutoff:",
                                    min=min(lmis$F_MISS),
                                    max=max(lmis$F_MISS,na.rm=T),
                                    value=(min(lmis$F_MISS)+max(lmis$F_MISS,na.rm=T))/2),
                        HTML(paste("(default value is ",defaults[1],")",sep="")),
                        radioButtons("lmiss_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot1"))            
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                        sliderInput("maf_cutoff",
                                    "MAF cutoff:",
                                    min=0,
                                    max=max(frq$MAF,na.rm=T),
                                    value=(min(frq$MAF,na.rm=T)+max(frq$MAF,na.rm=T))/2),
                        HTML(paste("(default value is ",defaults[3],")",sep="")),
                        radioButtons("maf_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot2"))  
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                        sliderInput("hwe_cutoff",
                                    "HWE cutoff:",
                                    min=min(hweP,na.rm=T),
                                    max=max(hweP,na.rm=T),
                                    value=(min(hweP,na.rm=T)+max(hweP,na.rm=T))+1/2),
                        HTML(paste("(default value is ",defaults[2],")",sep="")),
                        radioButtons("hwe_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot3")) 
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                              sliderInput("lme_cutoff",
                                          "LMERRORS cutoff:",
                                          min=min(merrors$N,na.rm=T),
                                          max=max(merrors$N,na.rm=T),
                                          value=(min(merrors$N,na.rm=T)+max(merrors$N,na.rm=T))/2),
                              HTML(paste("(default value is ",defaults[4],")",sep="")),
                              radioButtons("lme_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot4"))  
                  ),
                  div(class="row-fluid",
                      actionButton("write","Write values to file")
                  )
)

server<-function(input, output){
        output$plot1=renderPlot({
                hist2=hist(lmis$F_MISS,breaks=100,col="grey",main="LMISS filter",ylab="SNPs",xlab="proportion of individuals lacking")
                yc2=max(hist2$counts)/2
                xc2=mean(range(lmis$F_MISS,na.rm=T))
                n_excl2=totalS-sum(hist2$counts[1:sum(hist2$breaks<=input$lmiss_cutoff)],na.rm=T)
                text(xc2,yc2,paste("selected for exclusion: ",n_excl2,sep="") )  
                text(xc2,yc2*1.2,paste("lmiss cutoff:",input$lmiss_cutoff))
                abline(v=input$lmiss_cutoff, col="red")
        })
        output$plot2=renderPlot({
          hist3=hist(frq$MAF, breaks=100,col="grey",main="MAF filter",ylab="SNPs",xlab="minor allele frequency")
          yc3=max(hist3$counts)/2
          xc3=mean(range(frq$MAF,na.rm=T))
          n_excl3=sum(hist3$counts[1:sum(hist3$breaks<=input$maf_cutoff)])
          text(xc3,yc3,paste("selected for exclusion: ",n_excl3,sep="") )  
          text(xc3,yc3*1.2,paste("MAF cutoff:",input$maf_cutoff))
          abline(v=input$maf_cutoff, col="red")
        })
        output$plot3=renderPlot({
          hist4=hist(-log(hweUNAFF$P,base=10), breaks=100,col="grey",main="HWE filter",ylab="SNPs",xlab="negative log of P-value of deviation from HWE")
          yc4=max(hist4$counts)/2
          xc4=mean(range(-log(hweUNAFF$P,base=10),na.rm=T))
          n_excl4=sum(hist4$counts)-sum(hist4$counts[1:sum(hist4$breaks<=input$hwe_cutoff,na.rm=T)])
          text(xc4,yc4,paste("selected for exclusion: ",n_excl4,sep="") )  
          text(xc4,yc4*1.2,paste("HWE cutoff:",input$hwe_cutoff))
          abline(v=input$hwe_cutoff,col="red")
        })
        output$plot4=renderPlot({
                hist6=hist(merrors$N,col="grey",breaks=50, main="LMERR filter",ylab="SNPs",xlab="individuals with error in this SNP")
                yc5=max(hist6$counts)/2
                xc5=mean(range(merrors$N,na.rm=T))
                n_excl5=sum(hist6$counts)-sum(hist6$counts[1:sum(hist6$breaks<=input$lme_cutoff)],na.rm=T)
                text(xc5,yc5,paste("selected for exclusion: ",n_excl5,sep="") )  
                text(xc5,yc5*1.2,paste("LMERR cutoff:",input$lme_cutoff))
                abline(v=input$lme_cutoff, col="red")
        })
        observeEvent(input$write,{
                set_d=c(input$lmiss_d,input$hwe_d,input$maf_d,input$lme_d)
                output=c(input$lmiss_cutoff,input$hwe_cutoff,input$maf_cutoff,input$lme_cutoff)
                for (i in 1:length(defaults)){
                        if(set_d[i]){output[i]=defaults[i]}
                }
                write.table(output, file=paste(outDir,"shiny_snp_cut.txt",sep=""),quote=FALSE,row.names=FALSE,col.names=FALSE)
                stopApp()
        })
}
shiny=shinyApp(ui=ui,server=server)
runApp(shiny,launch.browser=TRUE)
