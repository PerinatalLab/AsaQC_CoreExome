#!/bin/bash
### script for removing individuals from a bed/bim/fam fileset
### USAGE: remove_inds.sh filename-stem
### (where individuals to be removed have "removethis" added to the line)


FILENAME=$1
PLINK=~/soft/plink/plink

grep "removethis" ${FILENAME}.fam | cut -f1,2 > indsToRemove.txt

${PLINK} \
--bfile ${FILENAME} \
--remove indsToRemove.txt \
--make-bed \
--out ${FILENAME}_clean
