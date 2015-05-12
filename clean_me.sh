#!/bin/bash

PLINK=~/soft/plink/plink
FILEIN=$1

## separate autosomes and replace merrors with missing
${PLINK} \
--bfile ${FILEIN} \
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
--out ${FILEIN}_me
