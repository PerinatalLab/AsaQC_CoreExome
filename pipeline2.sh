#!/bin/bash
#### QC pipeline for SNP and individual filtering
# USAGE: input_filename plink

FILENAME=$1
PLINK=~/soft/plink/plink
GCTA=~/soft/gcta/gcta64
FILE_HIGHLD=High-LD_genomic_regions.txt

############### ROUND 1
# plink to make stats
mkdir QC_ind_1/
echo "################################"
echo "Launching PLINK to produce statistics for individual QC round 1"
${PLINK} \
--bfile ${FILENAME} \
--missing \
--het \
--out ./QC_ind_1/${FILENAME}_stats

# here and further mendel stats are separated due to buggy chr23 check
${PLINK} \
--bfile ${FILENAME} \
--autosome \
--mendel \
--mendel-duos \
--out ./QC_ind_1/${FILENAME}_stats
echo "PLINK analysis for individual QC round 1 complete."

# launch shiny Rscript to generate plots and cutoffs
echo "Launching Shiny R script to manually select cutoff values for individual QC round 1"
./plots_ind.r ./QC_ind_1/${FILENAME}_stats ./QC_ind_1/
echo "Cutoff values written to file."

# analysis of QC_ind_1
# USAGE: QC_ind_1_filename QC_ind_1_folder cutoff_imiss, het, merrors
echo "################################"
echo "Launching R script for individual QC round 1 stats analysis"
Rscript -e "inFile='./QC_ind_1/${FILENAME}_stats'; outDir='./QC_ind_1/'; cutoffFile='./QC_ind_1/shiny_ind_cut.txt';\
library(knitr); knit2html('report_IND.Rmd', output='./QC_ind_1/report_IND1.html')"  
echo "Individual QC round 1 stats analysis complete."

# plink to filter individuals
echo "################################"
echo "Launching PLINK to filter individiduals for SNP QC round 1"
${PLINK} \
--bfile ${FILENAME} \
--keep ./QC_ind_1/selectedI.txt \
--make-bed \
--out ./QC_ind_1/${FILENAME}_filtered
echo "Filtering complete."

# run new plink stats for snps round 1
mkdir QC_snp_1/
echo "################################"
echo "Launching PLINK to produce statistics for SNP QC round 1"
${PLINK} \
--bfile ./QC_ind_1/${FILENAME}_filtered \
--missing \
--hardy \
--freq \
--out ./QC_snp_1/${FILENAME}_stats

${PLINK} \
--bfile ./QC_ind_1/${FILENAME}_filtered \
--autosome \
--mendel \
--mendel-duos \
--out ./QC_snp_1/${FILENAME}_stats
echo "PLINK analysis for SNP QC round 1 complete."

# launch shiny Rscript to generate plots and cutoffs
echo "Launching Shiny R script to manually select cutoff values for SNP QC round 1"
./plots_snp.r ./QC_snp_1/${FILENAME}_stats ./QC_snp_1/
echo "Cutoff values written to file."

# analysis of QC_snp_1
# USAGE: QC_snp_1_filename QC_snp_1_folder cutoff_lmiss, hwe, frq, me
echo "################################"
echo "Launching R script for SNP QC round 1 stats analysis"
Rscript -e "inFile='./QC_snp_1/${FILENAME}_stats'; outDir='./QC_snp_1/'; cutoffFile='./QC_snp_1/shiny_snp_cut.txt';\
library(knitr); knit2html('report_SNP.Rmd', output='./QC_snp_1/report_SNP1.html')"
echo "SNP QC round 1 stats analysis complete."

# plink to extract SNPs
echo "################################"
echo "Launching PLINK to filter SNPs for individual QC round 2"
${PLINK} \
--bfile ./QC_ind_1/${FILENAME}_filtered \
--extract ./QC_snp_1/selectedS.txt \
--make-bed \
--out ./QC_snp_1/${FILENAME}_filtered
echo "Filtering complete."


############### ROUND 2
# plink to make stats
mkdir QC_ind_2/
echo "################################"
echo "Launching PLINK to produce statistics for individual QC round 2"
${PLINK} \
--bfile ./QC_snp_1/${FILENAME}_filtered \
--missing \
--het \
--out ./QC_ind_2/${FILENAME}_stats

${PLINK} \
--bfile ./QC_snp_1/${FILENAME}_filtered \
--autosome \
--mendel \
--mendel-duos \
--out ./QC_ind_2/${FILENAME}_stats
echo "PLINK analysis for individual QC round 2 complete."


# launch shiny Rscript to generate plots and cutoffs
echo "Launching Shiny R script to manually select cutoff values for individual QC round 2"
./plots_ind.r ./QC_ind_2/${FILENAME}_stats ./QC_ind_2/
echo "Cutoff values written to file."

# analysis of QC_ind_2
# USAGE: QC_ind_2_filename QC_ind_2_folder QC_ind_2_shiny_cutoffs
echo "################################"
echo "Launching R script for individual QC round 2 stats analysis"
Rscript -e "inFile='./QC_ind_2/${FILENAME}_stats'; outDir='./QC_ind_2/'; cutoffFile='./QC_ind_2/shiny_ind_cut.txt';\
library(knitr); knit2html('report_IND.Rmd', output='./QC_ind_2/report_IND2.html')"  
echo "Individual QC round 2 stats analysis complete."

# plink to filter individuals
echo "################################"
echo "Launching PLINK to filter individiduals for SNP QC round 2"
${PLINK} \
--bfile ./QC_snp_1/${FILENAME}_filtered \
--keep ./QC_ind_2/selectedI.txt \
--make-bed \
--out ./QC_ind_2/${FILENAME}_filtered
echo "Filtering complete."

# plink to set SNPs with Mendel errors as missing !!!!
echo "################################"
echo "Launching PLINK to filter individiduals for SNP QC round 2"
${PLINK} \
--bfile ./QC_snp_1/${FILENAME}_filtered \
--keep ./QC_ind_2/selectedI.txt \
--make-bed \
--out ./QC_ind_2/${FILENAME}_filtered
echo "Filtering complete."

# run new plink stats for snps round 2
mkdir QC_snp_2/
echo "################################"
echo "Launching PLINK to produce statistics for SNP QC round 2"
${PLINK} \
--bfile ./QC_ind_2/${FILENAME}_filtered \
--missing \
--hardy \
--freq \
--out ./QC_snp_2/${FILENAME}_stats

${PLINK} \
--bfile ./QC_ind_2/${FILENAME}_filtered \
--autosome \
--mendel \
--mendel-duos \
--out ./QC_snp_2/${FILENAME}_stats
echo "PLINK analysis for SNP QC round 2 complete."

# launch shiny Rscript to generate plots and cutoffs
echo "Launching Shiny R script to manually select cutoff values for SNP QC round 2"
./plots_snp.r "./QC_snp_2/${FILENAME}_stats" "./QC_snp_2/"
echo "Cutoff values written to file."

# analysis of QC_snp_2
# USAGE: QC_snp_2_filename QC_snp_2_folder snp_2_shiny_cutoffs
echo "################################"
echo "Launching R script for individual QC round 2 stats analysis"
Rscript -e "inFile='./QC_snp_2/${FILENAME}_stats'; outDir='./QC_snp_2/'; cutoffFile='./QC_snp_2/shiny_snp_cut.txt';\
library(knitr); knit2html('report_SNP.Rmd', output='./QC_snp_2/report_SNP2.html')"
echo "SNP QC round 2 stats analysis complete."


mkdir QC_FINAL/
# plink to extract SNPs
echo "################################"
echo "Launching PLINK to filter SNPs for the final output"
${PLINK} \
--bfile ./QC_ind_2/${FILENAME}_filtered \
--extract ./QC_snp_2/selectedS.txt \
--make-bed \
--out ./QC_FINAL/${FILENAME}_filtered
echo "QC filtering complete."
echo "Review the results and run pipeline3.sh"

