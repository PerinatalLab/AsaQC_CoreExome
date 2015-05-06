#!/bin/bash
#### pre-QC pipeline for .fam correction
# USAGE: filename, [use_another_fam=.fam path] , [plink_path=~/soft/plink/plink]
# if another .fam is not needed, just write '' instead

FILENAME=$1
FAMFILE=$2
PLINK=${3:-~/soft/plink/plink}
FILE_HIGHLD=~/soft/ref1000G/High-LD_genomic_regions.txt

if [ $# -eq 0 ]; then
	echo "No arguments provided - filename is mandatory";
	exit
fi

# plink to make bed
${PLINK} \
--file ${FILENAME} \
--make-bed \
--out ${FILENAME}

# optional: replace .fam
if [ -z "$2" ];
then echo "no optional .fam file provided, using the one produced by PLINK"
else cp ${FAMFILE} ${FILENAME}.fam
echo "optional .fam file found and copied";
fi

# plink to make stats
mkdir pre-QC/
echo "################################"
echo "Launching PLINK to produce pre-QC statistics"
${PLINK} \
--bfile ${FILENAME} \
--missing \
--freq \
--hardy \
--het \
--check-sex \
--out ./pre-QC/${FILENAME}_stats
echo "PLINK analysis complete."

# R script to analyze
# USAGE: pre-QC_filename pre-QC_folder cutoff_imiss, lmiss, maf, hwe, het
echo "################################"
echo "Launching R script for pre-QC stats analysis"
Rscript -e "inFile='${FILENAME}'; outDir='./pre-QC/'; \
imiss_cutoff=0.02; lmiss_cutoff=0.02; maf_cutoff= 0.1; hwe_cutoff=0.0001; hribos=2; \
library(knitr); knit2html('report_preQC.Rmd', output='./pre-QC/report_preQC.html')"
## ./analyze-pre-stats.r "./pre-QC/${FILENAME}_stats" "./pre-QC/" 0.02 0.02 0.1 0.0001 2
echo "Pre-QC stats analysis complete."

# plink to extract snps and inds
echo "################################"
echo "Launching PLINK to filter SNPs and individiduals"
${PLINK} \
--bfile ${FILENAME} \
--extract ./pre-QC/selectedS.txt \
--keep ./pre-QC/selectedI.txt \
--make-bed \
--out ./pre-QC/${FILENAME}_filtered
echo "Filtering complete."

# plink to prune high LD regions from a supplied file of ranges
echo "################################"
echo "Launching PLINK to prune high LD regions"
${PLINK} \
--bfile ./pre-QC/${FILENAME}_filtered \
--exclude range ${FILE_HIGHLD} \
--make-bed \
--out ./pre-QC/${FILENAME}_prunedLD
echo "High LD regions pruned"

## plink to calculate correlation
echo "################################"
echo "Launching PLINK to prune correlated SNPs"
mkdir pre-QC/ibd/
${PLINK} \
--bfile ./pre-QC/${FILENAME}_prunedLD \
--indep-pairwise 100 25 0.2 \
--out ./pre-QC/ibd/${FILENAME}_correlated

# plink to prune correlated and extract snps
${PLINK} \
--bfile ./pre-QC/${FILENAME}_prunedLD \
--extract ./pre-QC/ibd/${FILENAME}_correlated.prune.in \
--make-bed \
--out ./pre-QC/ibd/${FILENAME}_pruned
echo "Pruning complete."

# plink to calculate ibd
echo "################################"
echo "Launching PLINK to calculate IBD statistics"
${PLINK} \
--bfile ./pre-QC/${FILENAME}_pruned \
--genome \
--out ./pre-QC/ibd/${FILENAME}_ibd-results
echo "IBD statistics calculated."

# R script to analyze ibd
echo "################################"
echo "Launching IBD result analysis"
Rscript -e "inFile='${FILENAME}'; library(knitr); knit2html('report_IBD.Rmd', output='./pre-QC/report_IBD.html')"
#./analyze-IBD.r ${FILENAME}
echo "IBD analysis complete."

# time for manual correction of .fam (cleanup parent IDs?)
echo "Now please review the results and manually correct the .fam file."
echo "To remove additional individuals, mark the undesired lines with 'removethis' and launch remove_inds.sh."
echo "After that, proceed to launch pipeline2.sh."
