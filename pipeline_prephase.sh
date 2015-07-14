#!/bin/bash
## USAGE: ./pipeline_prephase.sh -o output_files_folder, [-f filestem], [-i another_date_hash]
## as of now, same filestem is used for input and output

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

PLINK=~/soft/plink/plink
SHAPEIT=~/soft/shapeit/shapeit

FILEIN=${OUTDIR}${FILESTEM}_FINAL_${date}_${hash}
FILEOUT=${OUTDIR}split_chr/${FILESTEM}
REFDIR=~/soft/ref1000G/


mkdir ${OUTDIR}split_chr/
mkdir ${OUTDIR}prephased/

echo "pruning duplicated positions"
./removeDupls.R ${FILEIN}.bim ${FILEOUT}

${PLINK} \
--bfile ${FILEIN} \
--exclude ${FILEOUT}_duplicatedSNPs.txt \
--make-bed \
--out ${FILEOUT}_remDupl


for chr in {1..23} 
do
echo "Working on chromosome "${chr}
${PLINK} \
--bfile ${FILEOUT}_remDupl \
--chr ${chr} \
--make-bed \
--out ${FILEOUT}_${chr}
done

# for autosomes
for chrom in {1..22}
do
	echo "Prephasing chromosome "${chrom}
	./PREPHASE_autosome.sh ${chrom} ${FILEOUT} ${REFDIR} ${OUTDIR}prephased/${FILESTEM} ${SHAPEIT} ${PLINK}
done


# for X chromosome
chrom=23
echo "Prephasing chromosome "${chrom}
./PREPHASE_Xchr.sh ${chrom} ${FILEOUT} ${REFDIR} ${OUTDIR}prephased/${FILESTEM} ${SHAPEIT} ${PLINK}

####
echo "Prephasing complete. Now please run defineChunks.R, manually adjust the chunks and proceed to pipeline_impute.R."

