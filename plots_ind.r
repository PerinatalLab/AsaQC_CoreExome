#!/usr/bin/Rscript
library(shiny)
library(methods)

args=commandArgs(TRUE)
inFile=args[1]
outDir=args[2]

#inFile = "~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipeline/pre-QC/data_stats"
#outDir="./"
imis=read.table(paste(inFile,".imiss",sep=""),h=T)
totalI=dim(imis)[1]

het=read.table(paste(inFile,".het",sep=""),h=T)
h=(het$N.NM. - het$O.HOM.)/het$N.NM.
hMean=mean(h)
hSD=sd(h)

merrors=read.table(paste(inFile,".imendel",sep=""),h=T,stringsAsFactors=F)

defaults=c(0.02,2,100)

ui<-bootstrapPage(title="QC plots for cutoff adjustment",
                  div(class="row-fluid",
                      HTML("This tool is provided to visually inspect and adjust
                                 the cutoffs for QC filters. The default cutoff values are: <br />
                                 IMIS=0.02 HET=2 IND_ME=100 (for individuals) <br />")
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                        sliderInput("imiss_cutoff",
                                    "IMISS cutoff:",
                                    min=min(imis$F_MISS),
                                    max=max(imis$F_MISS,na.rm=T),
                                    value=(min(imis$F_MISS)+max(imis$F_MISS,na.rm=T))/2),
                        HTML(paste("(default value is ",defaults[1],")",sep="")),
                        radioButtons("imiss_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot1"))
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                        sliderInput("het_cutoff",
                                    "HET cutoff:",
                                    min=0.0,
                                    max=5.0,
                                    step=0.1,
                                    value=(0.0+5.0)/2),
                        HTML(paste("(default value is ",defaults[2],")",sep="")),
                        radioButtons("het_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot2"))  
                  ),
                  div(class="row-fluid",
                      sidebarPanel(
                              sliderInput("ime_cutoff",
                                          "IMERRORS cutoff:",
                                          min=min(merrors$N,na.rm=T),
                                          max=max(merrors$N,na.rm=T),
                                          value=(min(merrors$N,na.rm=T)+max(merrors$N,na.rm=T))/2),
                              HTML(paste("(default value is ",defaults[3],")",sep="")),
                              radioButtons("ime_d", "Use value:", c("Default value"=TRUE,"Current value"=FALSE))
                      ),
                      mainPanel(plotOutput("plot3"))  
                  ),
                  div(class="row-fluid",
                      actionButton("write","Write values to file")
                  )
)

server<-function(input, output){
        output$plot1=renderPlot({
                hist1=hist(imis$F_MISS,breaks=100,col="grey",main="IMISS filter",ylab="individuals",xlab="proportion of SNPs missing")
                abline(v=input$imiss_cutoff,col="red")
                yc1=max(hist1$counts)/2
                xc1=mean(range(imis$F_MISS,na.rm=T))
                n_excl1=totalI-sum(hist1$counts[1:sum(hist1$breaks<=input$imiss_cutoff)],na.rm=T)
                text(xc1,yc1,paste("selected for exclusion: ",n_excl1,sep="") )  
                text(xc1,yc1*1.2,paste("imiss cutoff:",input$imiss_cutoff))
        })
        output$plot2=renderPlot({
          hist5=hist(h,breaks=100,col="grey",main="HET filter",ylab="individuals",xlab="proportion of heterozygous loci")
          nexcl5=sum(h<hMean-input$het_cutoff*hSD | h>hMean+input$het_cutoff*hSD)
          yc5=max(hist5$counts)/2
          xc5=mean(range(h,na.rm=T))
          text(xc5,yc5,paste("selected for exclusion:",nexcl5))
          text(xc5,yc5*1.2,paste("Heterozygosity cutoff in SDs:",input$het_cutoff))
          abline(v=hMean, col="red")
          abline(v=hMean+input$het_cutoff*hSD, col="red")
          abline(v=hMean-input$het_cutoff*hSD, col="red")
        })
        output$plot3=renderPlot({
                hist3=hist(merrors$N,breaks=100,col="grey", main="MERR filter",ylab="individuals",xlab="SNPs with errors in this individual")
                yc3=max(hist3$counts)/2
                xc3=mean(range(merrors$N,na.rm=T))
                n_excl3=sum(hist3$counts)-sum(hist3$counts[1:sum(hist3$breaks<=input$ime_cutoff)],na.rm=T)
                text(xc3,yc3,paste("selected for exclusion: ",n_excl3,sep="") )  
                text(xc3,yc3*1.2,paste("mendel cutoff:",input$ime_cutoff))
                abline(v=input$ime_cutoff, col="red")
        })
        observeEvent(input$write,{
                set_d=c(input$imiss_d,input$het_d,input$ime_d)
                output=c(input$imiss_cutoff,input$het_cutoff,input$ime_cutoff)
                for (i in 1:length(defaults)){
                        if(set_d[i]){output[i]=defaults[i]}
                }
                write.table(output, file=paste(outDir,"shiny_ind_cut.txt",sep=""),quote=FALSE,row.names=FALSE,col.names=FALSE)
                stopApp()
        })
}
shiny=shinyApp(ui=ui,server=server)
runApp(shiny,launch.browser=TRUE)
