#!/bin/bash

CHR=$1
CHUNK_START=`printf "%.0f" $2`
CHUNK_END=`printf "%.0f" $3`
FILE=$4

PHASEDIR=./150520_9d598c5/prephased/
IMPUTEDIR=./150520_9d598c5/imputed/
PROCESSEDDIR=./150520_9d598c5/processed/

REFDIR=~/soft/ref1000G/
SAMPLE_FILE=${REFDIR}genetic_map_chrX_nonPAR_combined_b37.txt 

IMPUTE=~/soft/impute/impute2

${IMPUTE} \
-chrX \
-use_prephased_g \
-m ${SAMPLE_FILE} \
-h ${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.hap.gz \
-l ${REFDIR}ALL_1000G_phase1integrated_v3_chr${CHR}_impute.legend.gz \
-sample_g ${PHASEDIR}${FILE}${CHR}.sample \
-known_haps_g ${PHASEDIR}${FILE}${CHR}.prephased.haps.gz \
-Ne 20000 \
-int ${CHUNK_START} ${CHUNK_END} \
-o ${IMPUTEDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.impute2 \
-o_gz \
-verbose \
-allow_large_regions

## GEN to PED
${GTOOL} \
-G --chr ${CHR} \
--phenotype plink_pheno \
--g ${IMPUTEDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.impute2.gz \
--s ${IMPUTEDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.impute2_samples \
--ped ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.ped.gz \
--map ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.map.gz
		
gunzip ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.ped.gz
gunzip ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.map.gz
		
## PED to BED
${PLINK} \
--file ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed \
--make-bed  \
--maf 0.0001 \
--out ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed
					
rm ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.ped
rm ${PROCESSEDDIR}${FILE}${CHR}.pos${CHUNK_START}-${CHUNK_END}.imputed.map
