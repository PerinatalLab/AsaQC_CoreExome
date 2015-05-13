#!/bin/bash
#### pre-QC pipeline for .fam correction
# USAGE: filename, output directory, [use_another_fam=.fam path]
# if another .fam is not needed, just write '' instead

# FILEIN holds the full path to the input file
# OUTDIR holds the full path to the output folder with data hash
## in folder OUTROOT (something like ~/Documents/Analysis/)
## script creates subfolder with DATE and GIT HASH
## in that, file "data.ped" and similar will be created

FILEIN=$1
OUTROOT=$2
FAMFILE=$3

PLINK=~/soft/plink/plink

date="$(date +'%y%m%d')"
hash="$(git --git-dir ~/Documents/gitrep/.git log --pretty=format:'%h' -n 1)"

FILE_HIGHLD=~/soft/ref1000G/High-LD_genomic_regions.txt
DATE_HASH="${date}_${hash}/"
OUTDIR=${OUTROOT}${DATE_HASH}
FILESTEM="data"
FILENAME=${OUTDIR}${FILESTEM}

if [ $# -eq 0 ]; then
	echo "No arguments provided - filename and output dir are mandatory";
	exit
fi

mkdir ${OUTDIR}

# plink to make bed
${PLINK} \
--file ${FILEIN} \
--make-bed \
--out ${FILENAME}

# optional: replace .fam
if [ -z "$3" ];
then echo "no optional .fam file provided, using the one produced by PLINK"
else cp ${FAMFILE} ${FILENAME}.fam
echo "optional .fam file found and copied";
fi

# plink to make stats
mkdir ${OUTDIR}pre-QC/
echo "################################"
echo "Launching PLINK to produce pre-QC statistics"
${PLINK} \
--bfile ${FILENAME} \
--missing \
--freq \
--hardy \
--het \
--check-sex \
--out ${OUTDIR}pre-QC/${FILESTEM}_stats
echo "PLINK analysis complete."

# R script to analyze
# USAGE: pre-QC_filename pre-QC_folder cutoff_imiss, lmiss, maf, hwe, het
echo "################################"
echo "Launching R script for pre-QC stats analysis"
Rscript -e "inFile='${FILENAME}'; outDir='${OUTDIR}pre-QC/'; \
imiss_cutoff=0.02; lmiss_cutoff=0.02; maf_cutoff= 0.1; hwe_cutoff=0.0001; hribos=2; \
library(knitr); knit2html('report_preQC.Rmd', output='${OUTDIR}report_preQC.html')"
echo "Pre-QC stats analysis complete."

# plink to extract snps and inds
echo "################################"
echo "Launching PLINK to filter SNPs and individiduals"
${PLINK} \
--bfile ${FILENAME} \
--extract ${OUTDIR}pre-QC/selectedS.txt \
--keep ${OUTDIR}pre-QC/selectedI.txt \
--make-bed \
--out ${OUTDIR}pre-QC/${FILESTEM}_filtered
echo "Filtering complete."

# plink to prune high LD regions from a supplied file of ranges
echo "################################"
echo "Launching PLINK to prune high LD regions"
${PLINK} \
--bfile ${OUTDIR}pre-QC/${FILESTEM}_filtered \
--exclude range ${FILE_HIGHLD} \
--make-bed \
--out ${OUTDIR}pre-QC/${FILESTEM}_prunedLD
echo "High LD regions pruned"

## plink to calculate correlation
echo "################################"
echo "Launching PLINK to prune correlated SNPs"
mkdir ${OUTDIR}ibd/
${PLINK} \
--bfile ${OUTDIR}pre-QC/${FILESTEM}_prunedLD \
--indep-pairwise 100 25 0.2 \
--out ${OUTDIR}ibd/${FILESTEM}_correlated

# plink to prune correlated and extract snps
${PLINK} \
--bfile ${OUTDIR}pre-QC/${FILESTEM}_prunedLD \
--extract ${OUTDIR}ibd/${FILESTEM}_correlated.prune.in \
--make-bed \
--out ${OUTDIR}pre-QC/${FILESTEM}_pruned
echo "Pruning complete."

# plink to calculate ibd
echo "################################"
echo "Launching PLINK to calculate IBD statistics"
${PLINK} \
--bfile ${OUTDIR}pre-QC/${FILESTEM}_pruned \
--genome \
--out ${OUTDIR}ibd/${FILESTEM}_ibd-results
echo "IBD statistics calculated."

# R script to analyze ibd
echo "################################"
echo "Launching IBD result analysis"
Rscript -e "inFile='${FILENAME}'; ibdFile='${OUTDIR}ibd/${FILESTEM}'; library(knitr); knit2html('report_IBD.Rmd', output='${OUTDIR}report_IBD.html')"
echo "IBD analysis complete."

# time for manual correction of .fam (cleanup parent IDs?)
echo "Now please review the results and manually correct the .fam file."
echo "To remove additional individuals, mark the undesired lines with 'removethis' and launch remove_inds.sh."
echo "After that, proceed to launch pipeline2.sh."
