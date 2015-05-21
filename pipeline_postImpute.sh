#!/bin/bash
### this script is used for conversion and merging of imputed files

GTOOL=~/soft/gtool2/gtool
PLINK=~/soft/plink/plink

OUTROOT=./150521_254cd8f/
OUTDIR=${OUTROOT}processed/
INDIR=${OUTROOT}imputed/
FILESTEM="dataFULL"

mkdir ${OUTDIR}
#OLDFILE=~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipe_clean/data_clean_flipped2

for CHR in {1..23}
do
	mergelist=false
	
	rm ${OUTDIR}chunklist${CHR}.txt
	touch ${OUTDIR}chunklist${CHR}.txt
	
	for file in ${INDIR}${FILESTEM}_chr${CHR}.pos*.imputed.impute2.gz
	do
		FILEIN=`echo $file | awk -F.impute2 '{print $1}' | awk -F/ '{print $NF}'`
		## create a chunklist for use in merging
		
		if [ "$mergelist" = true ]
			then echo "${OUTDIR}${FILEIN}.bed ${OUTDIR}${FILEIN}.bim_edited ${OUTDIR}${FILEIN}.fam" >> ${OUTDIR}chunklist${CHR}.txt
			else mergelist=true; FIRSTFILE=${OUTDIR}${FILEIN}
		fi
		
		## new magic
		## this corrects the bim file alleles and attaches three info columns
		## alleles coded as 0 in .bim have MAF=0, so they will be deleted anyway
		awk 'FNR==NR{a[$2]=$7 FS $8 FS $9 FS $4 FS $5; next}{print $0,a[$2]}' ${INDIR}${FILEIN}.impute2_info ${OUTDIR}${FILEIN}.bim > ${OUTDIR}${FILEIN}.bim_edited
		awk -v chr="${CHR}" -v OFS=$'\t' '{sub(/1/,$10,$5);sub(/2/,$11,$5);sub(/1/,$10,$6);sub(/2/,$11,$6);print chr,$2,$3,$4,$5,$6,$7,$8,$9}' \
		${OUTDIR}${FILEIN}.bim_edited > ${OUTDIR}${FILEIN}.bim_edited2
		mv ${OUTDIR}${FILEIN}.bim_edited2 ${OUTDIR}${FILEIN}.bim_edited
		
		# just look at the same code without awk:
		
		#LC_ALL=C sort -f -d -k 2,2 -o ${OUTDIR}${FILEIN}.bim ${OUTDIR}${FILEIN}.bim
		
		#grep -v "^snp_id" ${INDIR}${FILEIN}.impute2_info | LC_ALL=C sort -f -d -t " " -k 2,2 | join -1 2 -2 2 ${OUTDIR}${FILEIN}.bim - | cut -d " " -f 1-6,9-14 > ${OUTDIR}${FILEIN}.bim_edited
		
		#cols_from_impute=($(awk -v OFS=__ '{print $7,$8}' ${OUTDIR}${FILEIN}.bim_edited))
		#cols_from_bim=($(awk -v OFS=__ '{print $5,$6}' ${OUTDIR}${FILEIN}.bim_edited))
		#stable_cols=($(awk -v OFS=__ '{print $2,$1,$3,$4}' ${OUTDIR}${FILEIN}.bim_edited))
		#info_cols=($(awk -v OFS=__ '{print $10,$11,$12}' ${OUTDIR}${FILEIN}.bim_edited))
		
		#mv ${OUTDIR}${FILEIN}.bim ${OUTDIR}${FILEIN}.bim_BACKUP
		#echo "Fixing next chunk with ${#cols_from_bim[@]} lines"
		
		#for ((i = 0; i < ${#cols_from_bim[@]}; i ++ ))
		#do
			#if [ "${cols_from_bim[$i]}" == "1__2" ]
			#then
				#cols_from_bim[$i]=${cols_from_impute[$i]}
			#elif [ "${cols_from_bim[$i]}" == "2__1" ]
			#then		
				#cols_from_bim[$i]=`echo "${cols_from_impute[$i]}" | awk -F__ -v OFS=__ '{print $2,$1}'`
			#fi
			#echo "${stable_cols[$i]}__${cols_from_bim[$i]}__${info_cols[$i]}" | sed 's/__/\t/g' >> ${OUTDIR}${FILEIN}.bim
		#done
		
		#sort -k 4,4 -n -o ${OUTDIR}${FILEIN}.bim ${OUTDIR}${FILEIN}.bim
	done
	
	## merge all chunks from one chromosome
	${PLINK} \
	--bfile ${FIRSTFILE} \
	--merge-list ${OUTDIR}chunklist${CHR}.txt \
	--threads 6 \
	--make-bed  \
	--geno 0.2 \
	--out ${OUTDIR}${FILESTEM}_chr${CHR}_merged
	
	for file in ${INDIR}${FILESTEM}_chr${CHR}.pos*.imputed.impute2.gz
	do
		FILEIN=`echo $file | awk -F.impute2 '{print $1}' | awk -F/ '{print $NF}'`
		awk 'FNR==NR{a[$2]=$7 FS $8 FS $9;next}{print $0, a[$2]}' ${OUTDIR}${FILEIN}.bim_edited ${OUTDIR}${FILESTEM}_chr${CHR}_merged.bim > ${OUTDIR}${FILESTEM}_chr${CHR}_mergedPLUS.bim
		mv ${OUTDIR}${FILESTEM}_chr${CHR}_mergedPLUS.bim ${OUTDIR}${FILESTEM}_chr${CHR}_merged.bim
		echo "working on chunk $FILEIN"
	done
done

rm ${OUTDIR}chromlist.txt
touch ${OUTDIR}chromlist.txt

cat ${OUTDIR}${FILESTEM}_chr1_merged.bim > ${OUTDIR}${FILESTEM}_allChrPLUS.bim

## make a chromosome list and merge them
for chrom in {2..23}
do
	echo "${OUTDIR}${FILESTEM}_chr${chrom}_merged.bed ${OUTDIR}${FILESTEM}_chr${chrom}_merged.bim ${OUTDIR}${FILESTEM}_chr${chrom}_merged.fam" >> ${OUTDIR}chromlist.txt
	cat ${OUTDIR}${FILESTEM}_chr${chrom}_merged.bim >> ${OUTDIR}${FILESTEM}_allChrPLUS.bim
done

${PLINK} \
--bfile ${OUTDIR}${FILESTEM}_chr1_merged \
--merge-list ${OUTDIR}chromlist.txt \
--threads 6 \
--make-bed \
--out ${OUTDIR}${FILESTEM}_allChr

mv ${OUTDIR}${FILESTEM}_allChrPLUS.bim ${OUTDIR}${FILESTEM}_allChr.bim

### rare alleles and AT-CG alleles need to be checked against imputations and re-included
# first, extract the rare alleles from the imputed file to .ped with one column per allele
${PLINK} \
--bfile ${OUTDIR}${FILESTEM}_allChr \
--extract ${OUTROOT}highMAF.txt \
--make-bed \
--out ${OUTDIR}${FILESTEM}_allChr_COMMON

${PLINK} \
--bfile ${OUTDIR}${FILESTEM}_allChr_COMMON \
--recodeA \
--out ${OUTDIR}${FILESTEM}_allChr_COMMON

## calculate MAF for classifier construction
${PLINK} \
--bfile ${OUTDIR}${FILESTEM}_allChr_COMMON \
--freq \
--out ${OUTDIR}${FILESTEM}_allChr_COMMON

## some magic
awk 'FNR==NR {a[$1]; next} $2 in a' ${OUTROOT}highMAF.txt ${OUTDIR}${FILESTEM}_allChr.bim | tr -s ' ' \\t > ${OUTDIR}${FILESTEM}_allChr_COMMON.bim

## fam file correction - also magic
## keep in mind that the file name and location might change here!!!
OLD_FAM_FILE=${OUTROOT}dataLOW_FINAL_150520_9d598c5.fam
awk 'FNR==NR {a[$2]=$3 FS $4; next} {print $2,$1,a[$1],$5,$6}' ${OLD_FAM_FILE} ${OUTDIR}${FILESTEM}_allChr.fam > ${OUTDIR}${FILESTEM}_allChr.fam_edited
mv ${OUTDIR}${FILESTEM}_allChr.fam_edited ${OUTDIR}${FILESTEM}_allChr.fam


# ${OLDFILE}.raw yra common SNPs that were both genotyped and imputed,
# ${OLDDIR}/QC_FINAL/${FILESTEM}_lowMAF.raw yra rare SNPs -""-

exit

## remove the rare alleles...
${PLINK} \
--bfile ${OUTDIR}ASA_NP3_150513_allChr \
--exclude lowMAF2.txt \
--make-bed \
--out ${OUTDIR}ASA_NP3_150513_allChr

## and fill-in the genotyped versions
${PLINK} \
--bfile ${OUTDIR}ASA_NP3_150513_allChr \
--bmerge ./QC_FINAL/data_clean_lowMAF \
--make-bed \
--out ${OUTDIR}ASA_NP3_150513_allChr

## the final .bim DOES NOT contain additional info columns - those are found only in the allChrPLUS.bim
## allChrPLUS can be safely copied over the final .bim
