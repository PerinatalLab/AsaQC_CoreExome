#!/bin/bash
### script to convert 1000Genomes reference files into map/ped format

HAPDIR=~/soft/ref1000G/test/
OUTDIR=~/soft/ref1000G/test/output/
HAPFILE=${HAPDIR}ALL_1000G_phase1integrated_v3_chr
SAMPLEFILE=~/soft/ref1000G/ALL_1000G_phase1integrated_v3.sample
echo ${HAPFILE}

## here the final filtered file should be specified since some more alleles are lost during QC
OURFILE=./QC_snp_2/data_clean_filtered_FINAL_me.bim

PLINK=~/soft/plink/plink

mkdir ${HAPDIR}output/

rm mergelist.txt
touch mergelist.txt
echo " " > emptyLine.txt

for CHR in 22 #{1..22}
do
    cp ${HAPFILE}${CHR}_impute.hap.gz ${OUTDIR}${CHR}.hap.gz
    cp ${HAPFILE}${CHR}_impute.legend.gz ${OUTDIR}${CHR}.legend.gz
    
    ## for each chromosome, extract the zipped hap and legend files
    gzip -d ${OUTDIR}${CHR}.hap.gz
    gzip -d ${OUTDIR}${CHR}.legend.gz

    ## mark only SNPs genotyped in our data
    ./select_toTake.R ${OUTDIR}${CHR}.legend ${OURFILE} ${OUTDIR}${CHR}takeThese.txt

    ## extract those SNPs from both files
    paste ${OUTDIR}${CHR}.hap ${OUTDIR}${CHR}takeThese.txt -d " "| grep "taketaketake" | cut -f 1-2184 -d " " > ${OUTDIR}${CHR}taken.hap
    cat emptyLine.txt ${OUTDIR}${CHR}takeThese.txt > ${OUTDIR}${CHR}takeThese2.txt
    paste ${OUTDIR}${CHR}.legend ${OUTDIR}${CHR}takeThese2.txt -d " " | grep "taketaketake" | cut -f 1-12 -d " " > ${OUTDIR}${CHR}taken.legend

    ## create tfam and tped files
    ./create-TFAM-TPED.R ${SAMPLEFILE} ${CHR} ${OUTDIR}${CHR}taken

    ## convert them into bed
    ${PLINK} \
    --tfile ${OUTDIR}${CHR}taken \
    --make-bed \
    --out ${OUTDIR}${CHR}taken

    ## remove temps
    rm ${OUTDIR}${CHR}.hap
    rm ${OUTDIR}${CHR}.legend
    rm ${OUTDIR}${CHR}taken.tped
    rm ${OUTDIR}${CHR}taken.tfam
    rm ${OUTDIR}${CHR}taken.hap
    rm ${OUTDIR}${CHR}taken.legend
    rm ${OUTDIR}${CHR}takeThese2.txt 

done

## merge all chromosomes

for CHR in {2..22}
do
    echo "${OUTDIR}${CHR}taken.bed ${OUTDIR}${CHR}taken.bim ${OUTDIR}${CHR}taken.fam" >> mergelist.txt
done

${PLINK} \
--bfile ${OUTDIR}1taken \
--merge-list mergelist.txt \
--make-bed \
--out ${OUTDIR}allChr
