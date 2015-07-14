


Analysis report of QC SNP statistics, round 2
========================================================

Report produced by J. Juodakis on **2015-06-09 12:20**

Data statistics obtained from files /home/julius/Desktop/2015MAR/torin_new_plink/150609_87fb294/QC_snp_2/torin_stats.lmiss etc.

Output written to directory /home/julius/Desktop/2015MAR/torin_new_plink/150609_87fb294/QC_snp_2/

------------------------------------------



## General Info

In this round of QC, statistics on **643364 SNPs** were analyzed.



The following plots present the filtering criteria and results for 3 filters - proportion of individuals lacking a certain SNP (LMISS), minor allele frequency (MAF), and divergence from Hardy-Weinberg equilibrium (HWE).

![plot of chunk plots1](figure/plots1-1.png) 

The following plots present the result for 1 additional filter - Mendelian errors observed in each SNP (MERR). Note that by default, lower number of breaks is used and additional zoom in is often required. This is to be expected when the number of fully genotyped family trios is low.

![plot of chunk plots2](figure/plots2-1.png) ![plot of chunk plots2](figure/plots2-2.png) 



## Final statistics of pre-QC filtering

Starting number of SNPs: 643364  
Number of SNPs passed all filters: 642351  
SNPs flagged by LMISS filter: 0  
SNPs flagged by HWE filter: 0  
SNPs flagged by MAF filter: 1013  
SNPs flagged by MERR filter: 0  

The following Venn diagram shows whether the same SNPs fail more than one filter:

![plot of chunk vennplot](figure/vennplot-1.png) 

## Writing final output
Final output will now be written to directory /home/julius/Desktop/2015MAR/torin_new_plink/150609_87fb294/QC_snp_2/. File *full-stats* contains full filtering statistics, file *selected* contains the list for automatic selection of SNPs to keep.


