#!/bin/bash
### this script is used for conversion and merging of imputed files

GTOOL=~/soft/gtool2/gtool
PLINK=~/soft/plink/plink

OUTDIR=./150520_9d598c5/processed/
INDIR=./150520_9d598c5/imputed/
mkdir ${OUTDIR}


## suggested divisions:
# 1-3
# 3-6
# 6-11
# 11-15
# 15-24

for ((CHR=$1; CHR<$2; CHR++)) #{1..23}
do
	mergelist=false
	
	rm ${OUTDIR}chunklist${CHR}.txt
	touch ${OUTDIR}chunklist${CHR}.txt
	
	for file in ${INDIR}dataLOW_chr${CHR}.pos*.imputed.impute2.gz
	do
		FILEIN=`echo $file | awk -F.impute2 '{print $1}' | awk -F/ '{print $NF}'`
		## create a chunklist for use in merging
		
		if [ "$mergelist" = true ]
			then echo "${OUTDIR}${FILEIN}.bed ${OUTDIR}${FILEIN}.bim ${OUTDIR}${FILEIN}.fam" >> ${OUTDIR}chunklist${CHR}.txt
			else mergelist=true; FIRSTFILE=${OUTDIR}${FILEIN}
		fi
		
		## moved to impute_autosomes and impute_Xchrom
		## GEN to PED
		#${GTOOL} \
		#-G --chr ${CHR} \
		#--phenotype plink_pheno \
		#--g ${INDIR}${FILEIN}.impute2.gz \
		#--s ${INDIR}${FILEIN}.impute2_samples \
		#--ped ${OUTDIR}${FILEIN}.ped.gz \
		#--map ${OUTDIR}${FILEIN}.map.gz
		
		#gunzip ${OUTDIR}${FILEIN}.ped.gz
		#gunzip ${OUTDIR}${FILEIN}.map.gz
		
		## PED to BED
		#${PLINK} \
		#--file ${OUTDIR}${FILEIN} \
		#--make-bed  \
		#--threads 6 \
		#--maf 0.0001 \
		#--out ${OUTDIR}${FILEIN}
					
		#rm ${OUTDIR}${FILEIN}.ped
		#rm ${OUTDIR}${FILEIN}.map
		
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
	--make-bed  \
	--geno 0.2 \
	--out ${OUTDIR}dataLOW_chr${CHR}_merged
	
	for file in ${INDIR}dataLOW_chr${CHR}.pos*.imputed.impute2.gz
	do
		FILEIN=`echo $file | awk -F.impute2 '{print $1}' | awk -F/ '{print $NF}'`
		awk 'FNR==NR{a[$2]=$7 FS $8 FS $9;next}{print $0, a[$2]}' ${OUTDIR}${FILEIN}.bim ${OUTDIR}dataLOW_chr${CHR}_merged.bim > ${OUTDIR}dataLOW_chr${CHR}_mergedPLUS.bim
		mv ${OUTDIR}dataLOW_chr${CHR}_mergedPLUS.bim ${OUTDIR}dataLOW_chr${CHR}_merged.bim
		echo "working on chunk $FILEIN"
	done
done

exit

rm ${OUTDIR}chromlist.txt
touch ${OUTDIR}chromlist.txt

cat ${OUTDIR}dataLOW_chr1_merged.bim > ${OUTDIR}dataLOW_allChrPLUS.bim

## make a chromosome list and merge them
for chrom in {2..23}
do
	echo "${OUTDIR}dataLOW_chr${chrom}_merged.bed ${OUTDIR}dataLOW_chr${chrom}_merged.bim ${OUTDIR}dataLOW_chr${chrom}_merged.fam" >> ${OUTDIR}chromlist.txt
	cat ${OUTDIR}dataLOW_chr${chrom}_merged.bim >> ${OUTDIR}dataLOW_allChrPLUS.bim
done

${PLINK} \
--bfile ${OUTDIR}dataLOW_chr1_merged \
--merge-list ${OUTDIR}chromlist.txt \
--make-bed \
--out ${OUTDIR}dataLOW_allChr

### rare alleles and AT-CG alleles need to be checked against imputations and re-included
# first, extract the rare alleles from the imputed file to .ped with one column per allele
${PLINK} \
--bfile ${OUTDIR}dataLOW_allChr \
--extract ./150520_9d598c5/highMAF.txt \
--recodeA \
--out ${OUTDIR}dataLOW_allChr_COMMON

## calculate MAF for classifier construction
${PLINK} \
--bfile ${OUTDIR}dataLOW_allChr_COMMON \
--freq \
--out ${OUTDIR}dataLOW_allChr_COMMON

## some magic
awk 'FNR==NR {a[$1]=$2; next} $2 in a' ./150520_9d598c5/highMAF.txt ${OUTDIR}dataLOW_allChr.bim > ${OUTDIR}dataLOW_allChr_COMMON.bim

## fam file correction - also magic
OLD_FAM_FILE=./150520_9d598c5/dataLOW_FINAL_150520_9d598c5.fam
awk 'FNR==NR {a[$2]=$3 FS $4; next} {print $2,$1,a[$1],$5,$6}' ${OLD_FAM_FILE} ${OUTDIR}dataLOW_allChr.fam > ${OUTDIR}dataLOW_allChr.fam_edited
mv ${OUTDIR}dataLOW_allChr.fam_edited ${OUTDIR}dataLOW_allChr.fam

# then recode rare alleles from genotyped data to the same format
${PLINK} \
--bfile ~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipe_clean/data_clean_flipped2 \
--recodeA \
--out ~/Desktop/2015MAR/NB-0472_141021_ResultReport/NB-0472_141021_PLINK_PCF_TOP/pipe_clean/data_clean_flipped2

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
