#!/bin/bash

CHR=$1
FILEIN=$2
REFDIR=$3
OUTDIR=$4
SHAPEIT=$5
PLINK=$6

## test mode for checking alignment
${SHAPEIT} \
-check \
--chrX \
--thread 6 \
--input-bed ${FILEIN}_${CHR} \
--output-log ${OUTDIR}_chr${CHR}.log \
--input-ref ${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.hap.gz \
${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.legend.gz \
${REFDIR}ALL_1000G_phase1integrated_v3.sample \
--input-map ${REFDIR}genetic_map_chrX_nonPAR_combined_b37.txt

cut -f 4 ${OUTDIR}_chr${CHR}.snp.strand | uniq > ${OUTDIR}_chr${CHR}_toFlip

${PLINK} \
--bfile ${FILEIN}_${CHR} \
--flip ${OUTDIR}_chr${CHR}_toFlip \
--make-bed \
--out ${FILEIN}_${CHR}_flipped

## second test to select unflippable SNPs 
${SHAPEIT} \
-check \
--chrX \
--thread 6 \
--input-bed ${FILEIN}_${CHR}_flipped \
--output-log ${OUTDIR}_chr${CHR}.log \
--input-ref ${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.hap.gz \
${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.legend.gz \
${REFDIR}ALL_1000G_phase1integrated_v3.sample \
--input-map ${REFDIR}genetic_map_chrX_nonPAR_combined_b37.txt

${SHAPEIT} \
--input-bed ${FILEIN}_${CHR}_flipped \
--input-ref ${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.hap.gz \
${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.legend.gz \
${REFDIR}ALL_1000G_phase1integrated_v3.sample \
--input-map ${REFDIR}genetic_map_chrX_nonPAR_combined_b37.txt \
--chrX \
--thread 6 \
--states 200 \
--burn 10 \
--prune 10 \
--main 50 \
--window 5 \
--duohmm \
--effective-size 11418 \
--exclude-snp ${OUTDIR}_chr${CHR}.snp.strand.exclude \
--output-max ${OUTDIR}_chr${CHR}.prephased.haps.gz ${OUTDIR}_chr${CHR}.sample \
--output-log ${OUTDIR}_chr${CHR}.log

# change STATES number when running quick phasings (100=quick, 200=slow)
# NOTE THAT default values for BURN/PRUNE/MAIN are  7,8,20 and 100 for STATES
# I removed an  --include-grp ./2_group.list  option
