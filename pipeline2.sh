#!/bin/bash
#### QC pipeline for SNP and individual filtering
# USAGE: -o output_files_folder, [-f filestem], [-c cutoff_files_folder], [-i another_date_hash]
# additional cutoff files have to be provided in the same names as generated here

GENERATE_CUTOFF=true
while getopts "o:f:c:i:" opt
do
	case $opt in
		o) OUTROOT=${OPTARG};;
		f) FILESTEM=${OPTARG};;
		c) PARAMS=${OPTARG}
			GENERATE_CUTOFF=false;;
		i) DATE_HASH=${OPTARG};;
	esac
done

if [ $# -eq 0 ]; then
	echo "No arguments provided - output directory (-o) is mandatory";
	exit
fi

date="$(date +'%y%m%d')"
hash="$(git --git-dir ~/Documents/gitrep/.git log --pretty=format:'%h' -n 1)"
DATE_HASH=${DATE_HASH:-"${date}_${hash}/"}

OUTDIR=${OUTROOT}${DATE_HASH}
PARAMS=${PARAMS:-${OUTDIR}}
FILESTEM=${FILESTEM:-"data"}
FILENAME=${OUTDIR}${FILESTEM}

PLINK=~/soft/plink/plink
GCTA=~/soft/gcta/gcta64
FILE_HIGHLD=~/soft/ref1000G/High-LD_genomic_regions.txt


############### ROUND 1
# plink to make stats
mkdir ${OUTDIR}QC_ind_1/
echo "################################"
echo "Launching PLINK to produce statistics for individual QC round 1"
${PLINK} \
--bfile ${FILENAME} \
--missing \
--het \
--out ${OUTDIR}QC_ind_1/${FILESTEM}_stats

# here and further mendel stats are separated due to buggy chr23 check
${PLINK} \
--bfile ${FILENAME} \
--autosome \
--mendel \
--mendel-duos \
--out ${OUTDIR}QC_ind_1/${FILESTEM}_stats
echo "PLINK analysis for individual QC round 1 complete."

# launch shiny Rscript to generate plots and cutoffs, if none provided
if $GENERATE_CUTOFF; then echo "Launching Shiny R script to manually select cutoff values for individual QC round 1"
./plots_ind.r ${OUTDIR}QC_ind_1/${FILESTEM}_stats ${OUTDIR}cutoff_ind_1.txt
echo "Cutoff values written to file."
else
echo "Using the cutoff values provided in ${PARAMS}"
fi

# analysis of QC_ind_1
# USAGE: QC_ind_1_filename QC_ind_1_folder cutoff_imiss, het, merrors
echo "################################"
echo "Launching R script for individual QC round 1 stats analysis"
Rscript -e "inFile='${OUTDIR}QC_ind_1/${FILESTEM}_stats'; outDir='${OUTDIR}QC_ind_1/'; cutoffFile='${PARAMS}cutoff_ind_1.txt';\
library(knitr); knit2html('report_IND.Rmd', output='${OUTDIR}report_IND1.html')"  
echo "Individual QC round 1 stats analysis complete."

# plink to filter individuals
echo "################################"
echo "Launching PLINK to filter individiduals for SNP QC round 1"
${PLINK} \
--bfile ${FILENAME} \
--keep ${OUTDIR}QC_ind_1/selectedI.txt \
--make-bed \
--out ${OUTDIR}QC_ind_1/${FILESTEM}_filtered
echo "Filtering complete."

# run new plink stats for snps round 1
mkdir ${OUTDIR}QC_snp_1/
echo "################################"
echo "Launching PLINK to produce statistics for SNP QC round 1"
${PLINK} \
--bfile ${OUTDIR}QC_ind_1/${FILESTEM}_filtered \
--missing \
--hardy \
--freq \
--out ${OUTDIR}QC_snp_1/${FILESTEM}_stats

${PLINK} \
--bfile ${OUTDIR}QC_ind_1/${FILESTEM}_filtered \
--autosome \
--mendel \
--mendel-duos \
--mendel-multigen \
--out ${OUTDIR}QC_snp_1/${FILESTEM}_stats
echo "PLINK analysis for SNP QC round 1 complete."

# launch shiny Rscript to generate plots and cutoffs, if none provided
if $GENERATE_CUTOFF; then echo "Launching Shiny R script to manually select cutoff values for SNP QC round 1"
./plots_snp.r ${OUTDIR}QC_snp_1/${FILESTEM}_stats ${OUTDIR}cutoff_snp_1.txt
echo "Cutoff values written to file."
else
echo "Using the cutoff values provided in ${PARAMS}"
fi

# analysis of QC_snp_1
# USAGE: QC_snp_1_filename QC_snp_1_folder cutoff_lmiss, hwe, frq, me
echo "################################"
echo "Launching R script for SNP QC round 1 stats analysis"
Rscript -e "inFile='${OUTDIR}QC_snp_1/${FILESTEM}_stats'; outDir='${OUTDIR}QC_snp_1/'; cutoffFile='${PARAMS}cutoff_snp_1.txt';\
library(knitr); knit2html('report_SNP.Rmd', output='${OUTDIR}report_SNP1.html')"
echo "SNP QC round 1 stats analysis complete."

# plink to extract SNPs
echo "################################"
echo "Launching PLINK to filter SNPs for individual QC round 2"
${PLINK} \
--bfile ${OUTDIR}QC_ind_1/${FILESTEM}_filtered \
--extract ${OUTDIR}QC_snp_1/selectedS.txt \
--make-bed \
--out ${OUTDIR}QC_snp_1/${FILESTEM}_filtered
echo "Filtering complete."


############### ROUND 2
# plink to make stats
mkdir ${OUTDIR}QC_ind_2/
echo "################################"
echo "Launching PLINK to produce statistics for individual QC round 2"
${PLINK} \
--bfile ${OUTDIR}QC_snp_1/${FILESTEM}_filtered \
--missing \
--het \
--out ${OUTDIR}QC_ind_2/${FILESTEM}_stats

${PLINK} \
--bfile ${OUTDIR}QC_snp_1/${FILESTEM}_filtered \
--autosome \
--mendel \
--mendel-duos \
--out ${OUTDIR}QC_ind_2/${FILESTEM}_stats
echo "PLINK analysis for individual QC round 2 complete."


# launch shiny Rscript to generate plots and cutoffs, if none provided
if $GENERATE_CUTOFF; then echo "Launching Shiny R script to manually select cutoff values for individual QC round 2"
./plots_ind.r ${OUTDIR}QC_ind_2/${FILESTEM}_stats ${OUTDIR}cutoff_ind_2.txt
echo "Cutoff values written to file."
else
echo "Using the cutoff values provided in ${PARAMS}"
fi

# analysis of QC_ind_2
# USAGE: QC_ind_2_filename QC_ind_2_folder QC_ind_2_shiny_cutoffs
echo "################################"
echo "Launching R script for individual QC round 2 stats analysis"
Rscript -e "inFile='${OUTDIR}QC_ind_2/${FILESTEM}_stats'; outDir='${OUTDIR}QC_ind_2/'; cutoffFile='${PARAMS}cutoff_ind_2.txt';\
library(knitr); knit2html('report_IND.Rmd', output='${OUTDIR}report_IND2.html')"  
echo "Individual QC round 2 stats analysis complete."

# plink to filter individuals
echo "################################"
echo "Launching PLINK to filter individiduals for SNP QC round 2"
${PLINK} \
--bfile ${OUTDIR}QC_snp_1/${FILESTEM}_filtered \
--keep ${OUTDIR}QC_ind_2/selectedI.txt \
--make-bed \
--out ${OUTDIR}QC_ind_2/${FILESTEM}_filtered
echo "Filtering complete."

# run new plink stats for snps round 2
mkdir ${OUTDIR}QC_snp_2/
echo "################################"
echo "Launching PLINK to produce statistics for SNP QC round 2"
${PLINK} \
--bfile ${OUTDIR}QC_ind_2/${FILESTEM}_filtered \
--missing \
--hardy \
--freq \
--out ${OUTDIR}QC_snp_2/${FILESTEM}_stats

${PLINK} \
--bfile ${OUTDIR}QC_ind_2/${FILESTEM}_filtered \
--autosome \
--mendel \
--mendel-duos \
--mendel-multigen \
--out ${OUTDIR}QC_snp_2/${FILESTEM}_stats
echo "PLINK analysis for SNP QC round 2 complete."

# launch shiny Rscript to generate plots and cutoffs, if none provided
if $GENERATE_CUTOFF; then echo "Launching Shiny R script to manually select cutoff values for SNP QC round 2"
./plots_snp.r ${OUTDIR}QC_snp_2/${FILESTEM}_stats ${OUTDIR}cutoff_snp_2.txt
echo "Cutoff values written to file."
else
echo "Using the cutoff values provided in ${PARAMS}"
fi

# analysis of QC_snp_2
# USAGE: QC_snp_2_filename QC_snp_2_folder snp_2_shiny_cutoffs
echo "################################"
echo "Launching R script for individual QC round 2 stats analysis"
Rscript -e "inFile='${OUTDIR}QC_snp_2/${FILESTEM}_stats'; outDir='${OUTDIR}QC_snp_2/'; cutoffFile='${PARAMS}cutoff_snp_2.txt';\
library(knitr); knit2html('report_SNP.Rmd', output='${OUTDIR}report_SNP2.html')"
echo "SNP QC round 2 stats analysis complete."


mkdir ${OUTDIR}QC_FINAL/
# plink to separate alleles of low MAF, but otherwise good quality
echo "################################"
echo "Launching PLINK to store alleles of low MAF"
cat ${OUTDIR}QC_snp_1/lowMAF1.txt >> ${OUTDIR}QC_snp_2/lowMAF2.txt
${PLINK} \
--bfile ${FILENAME} \
--extract ${OUTDIR}QC_snp_2/lowMAF2.txt \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_lowMAF

## recode these rare alleles from genotyped data to the same format
#${PLINK} \
#--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_lowMAF \
#--extract ${OUTDIR}QC_snp_2/lowMAF2.txt \
#--recodeA \
#--out ${OUTDIR}QC_FINAL/${FILESTEM}_lowMAF

# plink to extract SNPs
echo "################################"
echo "Launching PLINK to filter SNPs for the final output"
${PLINK} \
--bfile ${OUTDIR}QC_ind_2/${FILESTEM}_filtered \
--extract ${OUTDIR}QC_snp_2/selectedS.txt \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_filtered
echo "QC filtering complete."
echo "Review the results and run pipeline3.sh"


