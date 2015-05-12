#!/bin/bash

FILENAME=$1
FILE_HIGHLD=~/soft/ref1000G/High-LD_genomic_regions.txt
DIROUT=./PCA/${FILENAME}
FILEIN=./QC_FINAL/${FILENAME}
HAPFILE=~/soft/ref1000G/binary/allChr
HAPDIR=~/soft/ref1000G/binary/

PLINK=~/soft/plink/plink
GCTA=~/soft/gcta/gcta64

mkdir PCA/

#### Note: this script produces some important files in the current folder

#############################################
### Mendelian errors on autosomes only have to be replaced with missing calls

## separate autosomes and replace merrors with missing
${PLINK} \
--bfile ${FILEIN}_filtered \
--autosome \
--mendel-duos \
--set-me-missing \
--make-bed \
--out ${FILEIN}_autome

## separate sex chromosomes
${PLINK} \
--bfile ${FILEIN} \
--not-chr 1-22 \
--make-bed \
--out ${FILEIN}_sexchr

## merges the files back again
${PLINK} \
--bfile ${FILEIN}_autome \
--bmerge ${FILEIN}_sexchr \
--make-bed \
--out ${FILEIN}_maskedME

#############################################
###### it is not possible to predict the strand of AT and CG SNPs,
###### so they are removed here

# R script to generate a list of bad (AT or GC) SNPs from OUR DATA
echo "Launching R script to generate no CG, no AT SNP list"
./extract_AT.r ${FILEIN}_maskedME.bim ./

#  generate subset of only informative (no CG, AT) SNPs from OUR DATA
echo "#########################"
echo "extracting a subset of our data-no at, cg SNPs"
${PLINK} \
--bfile ${FILEIN}_maskedME \
--exclude bad_snps.txt \
--make-bed \
--out ${FILEIN}_atcgpruned

#  generate subset of non-informative (only CG, AT) SNPs from OUR DATA
echo "#########################"
echo "extracting a subset of our data-ONLY at, cg SNPs"
${PLINK} \
--bfile ${FILEIN}_maskedME \
--extract bad_snps.txt \
--make-bed \
--out ${FILEIN}_atcgonly

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
--bfile ${FILEIN}_atcgpruned \
--bmerge ${HAPFILE}_atcgpruned \
--out ${FILEIN}_toflip

# actual flipping of SNPs
echo "#########################"
echo "flipping SNPs"
${PLINK} \
--bfile ${FILEIN}_atcgpruned \
--flip ${FILEIN}_toflip.missnp \
--make-bed \
--out ${FILEIN}_flipped


###### is this second round needed? this solved some 700 more SNPs for me
###### if not, the output folder above should be set to ./
# removing snps that still don't merge
echo "#########################"
echo "trial merge to generate a to-flip-strand list"
${PLINK} \
--bfile ${FILEIN}_flipped \
--bmerge ${HAPFILE}_atcgpruned \
--out ${FILEIN}_toflip2

## here, final file for imputation is produced in ./
echo "#########################"
echo "removing SNPs that failed to merge"
${PLINK} \
--bfile ${FILEIN}_flipped \
--exclude ${FILEIN}_toflip2.missnp \
--make-bed \
--out ${FILENAME}_flipped2


#########################################
###### preparations and PCA itself

# merge HAPMAP and OUR (flipped) datasets ON INFORMATIVE SNPS
echo "#########################"
echo "final merging with HapMap3"
${PLINK} \
--bfile ${FILENAME}_flipped2 \
--bmerge ${HAPFILE}_atcgpruned \
--allow-no-sex \
--make-bed \
--out ${DIROUT}_merged
echo "Merging complete."

# remove SNPs which were genotyped in only one population (required for PCA)
#### atkreipti demesi, kad filtras hardcoded cutoff naudoja
echo "########################"
echo "removing alleles present in only one population"
${PLINK} \
--bfile ${DIROUT}_merged \
--geno 0.1 \
--make-bed \
--out ${DIROUT}_merged2
echo "Merging complete."

# plink to calculate correlation and prune
echo "#########################"
echo "calculating correlation"
${PLINK} \
--bfile ${DIROUT}_merged2 \
--indep-pairwise 100 25 0.2 \
--out ${DIROUT}_correlated

echo "#########################"
echo "pruning correlated snps"
${PLINK} \
--bfile ${DIROUT}_merged2 \
--extract ${DIROUT}_correlated.prune.in \
--make-bed \
--out ${DIROUT}_pruned

# plink to prune high LD regions
echo "#########################"
echo "pruning high LD regions"
${PLINK} \
--bfile ${DIROUT}_pruned \
--exclude range ${FILE_HIGHLD} \
--make-bed \
--out ${DIROUT}_prunedLD
echo "All pruning complete."

## actual PCA
## galbut PCA reiktu naudoti tik founderius???
${GCTA} \
--bfile ${DIROUT}_prunedLD \
--autosome \
--make-grm \
--out ${DIROUT} \
--thread-num 6

${GCTA} \
--grm ${DIROUT} \
--pca \
--out ${DIROUT} \
--thread-num 6

##  R script for PCA analysis
echo "##########################"
echo "Launching R script for visualizing PCA results"
Rscript -e "inFile='${DIROUT}.eigenvec'; sampleFile='~/soft/ref1000G/ALL_1000G_phase1integrated_v3.sample'; \
library(knitr); knit2html('report_PCA_merged.Rmd', output='./PCA/report_PCA_merged.html')"
echo "PCA result analysis complete."
