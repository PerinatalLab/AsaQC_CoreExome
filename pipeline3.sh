#!/bin/bash
### final QC pipeline stages for error masking, strand flipping and PCA
# USAGE: -o output_files_folder, [-f filestem], [-i another_date_hash]


while getopts "o:f:i:" opt
do
	case $opt in
		o) OUTROOT=${OPTARG};;
		f) FILESTEM=${OPTARG};;
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
FILESTEM=${FILESTEM:-"data"}
FILENAME=${OUTDIR}${FILESTEM}

HAPFILE=~/soft/ref1000G/binaryNEW/allChr
HAPDIR=~/soft/ref1000G/binaryNEW/
HAP_SAMPLE=~/soft/ref1000G/ALL_1000G_phase1integrated_v3.sample
FILE_HIGHLD=~/soft/ref1000G/High-LD_genomic_regions.txt

PLINK=~/soft/plink/plink
GCTA=~/soft/gcta/gcta64

mkdir ${OUTDIR}PCA/

#############################################
### Mendelian errors on autosomes only have to be replaced with missing calls

## separate autosomes and replace merrors with missing
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_filtered \
--autosome \
--mendel-duos \
--set-me-missing \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_autome

## separate sex chromosomes
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_filtered \
--not-chr 1-22 \
--set-hh-missing \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_sexchr

## merges the files back again
## additional missingness filter to remove SNPs with
## increased missingness in the two previous steps
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_autome \
--bmerge ${OUTDIR}QC_FINAL/${FILESTEM}_sexchr \
--geno 0.04 \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_maskedME

#############################################
###### it is not possible to predict the strand of AT and CG SNPs,
###### so they are removed here

# R script to generate a list of bad (AT or GC) SNPs from OUR DATA
echo "Launching R script to generate no CG, no AT SNP list"
./extract_AT.r ${OUTDIR}QC_FINAL/${FILESTEM}_maskedME.bim ${OUTDIR}

#  generate subset of only informative (no CG, AT) SNPs from OUR DATA
echo "#########################"
echo "extracting a subset of our data-no at, cg SNPs"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_maskedME \
--exclude ${OUTDIR}bad_snps.txt \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_atcgpruned

#  generate subset of non-informative (only CG, AT) SNPs from OUR DATA
echo "#########################"
echo "extracting a subset of our data-ONLY at, cg SNPs"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_maskedME \
--extract ${OUTDIR}bad_snps.txt \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_atcgonly

### same with 1000G - optional, but suggested

# R script to generate a list of bad (AT or GC) SNPs from 1000G
echo "Launching R script to generate no CG, no AT SNP list"
./extract_AT.r ${HAPFILE}.bim ${HAPDIR}

#  generate subset of only informative (no CG, AT) SNPs from 1000G
echo "#########################"
echo "extracting a subset of our data-no at, cg SNPs"
${PLINK} \
--bfile ${HAPFILE} \
--exclude ${HAPDIR}bad_snps.txt \
--make-bed \
--out ${HAPFILE}_atcgpruned

#  generate subset of non-informative (only CG, AT) SNPs from 1000G
echo "#########################"
echo "extracting a subset of our data-ONLY at, cg SNPs"
${PLINK} \
--bfile ${HAPFILE} \
--extract ${HAPDIR}bad_snps.txt \
--make-bed \
--out ${HAPFILE}_atcgonly

#############################################
#### actual merging and flipping

#  find OUR SNPs that need flipping
echo "#########################"
echo "trial merge to generate a to-flip-strand list"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_atcgpruned \
--bmerge ${HAPFILE}_atcgpruned \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_toflip

# actual flipping of SNPs
echo "#########################"
echo "flipping SNPs"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_atcgpruned \
--flip ${OUTDIR}QC_FINAL/${FILESTEM}_toflip.missnp \
--make-bed \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_flipped

# removing snps that still don't merge
echo "#########################"
echo "trial merge to generate a to-exclude list"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_flipped \
--bmerge ${HAPFILE}_atcgpruned \
--out ${OUTDIR}QC_FINAL/${FILESTEM}_toflip2

## here, final file for imputation is produced in ./
echo "#########################"
echo "removing SNPs that failed to merge"
${PLINK} \
--bfile ${OUTDIR}QC_FINAL/${FILESTEM}_flipped \
--exclude ${OUTDIR}QC_FINAL/${FILESTEM}_toflip2.missnp \
--make-bed \
--out ${OUTDIR}${FILESTEM}_FINAL_${date}_${hash}


#########################################
###### preparations and PCA itself

# merge HAPMAP and OUR (flipped) datasets ON INFORMATIVE SNPS
echo "#########################"
echo "final merging with HapMap3"
${PLINK} \
--bfile ${OUTDIR}${FILESTEM}_FINAL_${date}_${hash} \
--bmerge ${HAPFILE}_atcgpruned \
--allow-no-sex \
--make-bed \
--out ${OUTDIR}PCA/${FILESTEM}_merged
echo "Merging complete."

# remove SNPs which were genotyped in only one population (required for PCA)
#### atkreipti demesi, kad filtras hardcoded cutoff naudoja
echo "########################"
echo "removing alleles present in only one population"
${PLINK} \
--bfile ${OUTDIR}PCA/${FILESTEM}_merged \
--geno 0.1 \
--make-bed \
--out ${OUTDIR}PCA/${FILESTEM}_merged2
echo "Merging complete."

# plink to calculate correlation and prune
echo "#########################"
echo "calculating correlation"
${PLINK} \
--bfile ${OUTDIR}PCA/${FILESTEM}_merged2 \
--indep-pairwise 100 25 0.2 \
--out ${OUTDIR}PCA/${FILESTEM}_correlated

echo "#########################"
echo "pruning correlated snps"
${PLINK} \
--bfile ${OUTDIR}PCA/${FILESTEM}_merged2 \
--extract ${OUTDIR}PCA/${FILESTEM}_correlated.prune.in \
--make-bed \
--out ${OUTDIR}PCA/${FILESTEM}_pruned

# plink to prune high LD regions
echo "#########################"
echo "pruning high LD regions"
${PLINK} \
--bfile ${OUTDIR}PCA/${FILESTEM}_pruned \
--exclude range ${FILE_HIGHLD} \
--make-bed \
--out ${OUTDIR}PCA/${FILESTEM}_prunedLD
echo "All pruning complete."

## actual PCA
## galbut PCA reiktu naudoti tik founderius???
${GCTA} \
--bfile ${OUTDIR}PCA/${FILESTEM}_prunedLD \
--autosome \
--make-grm \
--out ${OUTDIR}PCA/${FILESTEM} \
--thread-num 6

${GCTA} \
--grm ${OUTDIR}PCA/${FILESTEM} \
--pca \
--out ${OUTDIR}PCA/${FILESTEM} \
--thread-num 6

##  R script for PCA analysis
echo "##########################"
echo "Launching R script for visualizing PCA results"
Rscript -e "inFile='${OUTDIR}PCA/${FILESTEM}.eigenvec'; sampleFile='${HAP_SAMPLE}'; \
library(knitr); knit2html('report_PCA_merged.Rmd', output='${OUTDIR}report_PCA_merged.html')"
echo "PCA result analysis complete."
