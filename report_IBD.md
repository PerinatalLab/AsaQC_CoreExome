

Report of IBD analysis stage of pre-QC
========================================================

Report produced by J. Juodakis on **2015-06-15 15:55**

Data obtained from files **/home/julius/Desktop/2015MAR/all_arrays/MERGED_COMMON2.bed**, /home/julius/Desktop/2015MAR/all_arrays/MERGED_COMMON2.bim, /home/julius/Desktop/2015MAR/all_arrays/MERGED_COMMON2.fam

IBD statistics obtained from ./pre-QC/ibd//home/julius/Desktop/2015MAR/all_arrays/MERGED_COMMON2_ibd-results.genome

------------------------------------------

This is an additional report for the identity-by-descent analysis. The statistics provided here were generated using the .fam file that includes any adjustments following the pre-QC stage. This report will present any cases where IBD PI_HAT statistic deviates from the predictions, and will generate likely explanations for this deviation. 

## Data Files Being Used



In the .fam file used for this analysis, there are 365 unique families with 790 genotyped individuals (rows). There are 518 declared fathers (V3) and 518 mothers (V4), of which 321 and 316 are unique;  126 and 94 are actually genotyped in this dataset. In total there are 17 successfully genotyped full family trios. These declared relationships exist in the .fam file:


|  FS| HS|  OT|  PO|     UN|
|---:|--:|---:|---:|------:|
| 243|  3| 108| 278| 311023|

The IBD file has 311655 pairwise comparisons, 365 unique families and 790 unique individuals.

Pairwise PI_HAT value histogram split by type of declared relationship:

![plot of chunk plots1](figure/plots1-1.png) ![plot of chunk plots1](figure/plots1-2.png) 




## Agreement and Conflicts between the .fam file and genetics

Among the **278** declared **Parent-Offspring** pairs **0** problems were found (0 were genetically Unrelated, 0 Full Siblings, 0 Monozygotic Twins, 0 Half Siblings, 0 Unexplained, 0 explanations were overlapping).

Among the **311023** declared **Unrelated** pairs **16** problems (related pairs) were found (1 were genetically Parent-Offspring pairs, 0 Full Siblings, 0 Monozygotic Twins, 1 Half Siblings, 14 Unexplained, 0 explanations were overlapping).

Among the **243** declared **Full Sibling** pairs **3** problems were found (0 were genetically Unrelated pairs, 0 Parent-Offspring pairs, 1 Monozygotic Twins, 2 Half Siblings, 0 Unexplained, 0 explanations were overlapping).

Among the **108** declared **Other-Type** relationship pairs 40 were genetically Unrelated, 2 were Parent-Offspring pairs, 0 were Full Siblings, 0 Monozygotic Twins, 63 Half Siblings, 3 Unexplained, 0 explanations were overlapping.


Please note that for downstream procedures (phasing and imputation) only Parent-offspring problems **must** be solved now. However, it is **very important** to take into account the violation of sample independence assumption in the GWAS analysis following QC/phasing/imputation: "other-type" relationships in this report ideally should be genetically unrelated, but it actually is not, thus exclusion step is required.

------
## Detailed list of explained conflicts

### Declared as Parent-Offspring
**Unrelated:**


**Full siblings:**


**Half siblings:**


**Monozygotic twins:**


------
### Declared as Full-Sibling
**Unrelated:**


**Parent-Offspring:**


**Half siblings:**
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 158475 </td> <td> 106 </td> <td> 106 </td> <td> 106 </td> <td> 106_1 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 276411 </td> <td> 244 </td> <td> 244_1 </td> <td> 244 </td> <td> 244_2 </td> <td align="right"> 0.55 </td> <td align="right"> 0.45 </td> <td align="right"> 0.00 </td> </tr>
   </table>

**Monozygotic twins:**
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 24753 </td> <td> 15 </td> <td> 15 </td> <td> 15 </td> <td> 15_1 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> <td align="right"> 1.00 </td> </tr>
   </table>

------
### Declared as Other-Type
**Unrelated:**
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 32281 </td> <td> 20 </td> <td> 20 </td> <td> 20 </td> <td> 20_4 </td> <td align="right"> 0.72 </td> <td align="right"> 0.28 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 32282 </td> <td> 20 </td> <td> 20 </td> <td> 20 </td> <td> 20_4_1 </td> <td align="right"> 0.87 </td> <td align="right"> 0.12 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 32283 </td> <td> 20 </td> <td> 20 </td> <td> 20 </td> <td> 20_4_2 </td> <td align="right"> 0.85 </td> <td align="right"> 0.14 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 33026 </td> <td> 20 </td> <td> 20_1 </td> <td> 20 </td> <td> 20_3 </td> <td align="right"> 0.97 </td> <td align="right"> 0.03 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 33027 </td> <td> 20 </td> <td> 20_1 </td> <td> 20 </td> <td> 20_4 </td> <td align="right"> 0.96 </td> <td align="right"> 0.04 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 33028 </td> <td> 20 </td> <td> 20_1 </td> <td> 20 </td> <td> 20_4_1 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 33029 </td> <td> 20 </td> <td> 20_1 </td> <td> 20 </td> <td> 20_4_2 </td> <td align="right"> 0.98 </td> <td align="right"> 0.00 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 33772 </td> <td> 20 </td> <td> 20_2 </td> <td> 20 </td> <td> 20_4 </td> <td align="right"> 0.74 </td> <td align="right"> 0.26 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 33773 </td> <td> 20 </td> <td> 20_2 </td> <td> 20 </td> <td> 20_4_1 </td> <td align="right"> 0.90 </td> <td align="right"> 0.09 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 33774 </td> <td> 20 </td> <td> 20_2 </td> <td> 20 </td> <td> 20_4_2 </td> <td align="right"> 0.89 </td> <td align="right"> 0.09 </td> <td align="right"> 0.02 </td> </tr>
  <tr> <td align="right"> 34517 </td> <td> 20 </td> <td> 20_3 </td> <td> 20 </td> <td> 20_4_1 </td> <td align="right"> 0.77 </td> <td align="right"> 0.23 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 34518 </td> <td> 20 </td> <td> 20_3 </td> <td> 20 </td> <td> 20_4_2 </td> <td align="right"> 0.77 </td> <td align="right"> 0.23 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 68403 </td> <td> 43 </td> <td> 43_1 </td> <td> 43 </td> <td> 43_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 100081 </td> <td> 62 </td> <td> 62_1 </td> <td> 62 </td> <td> 62_2 </td> <td align="right"> 0.97 </td> <td align="right"> 0.03 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 105895 </td> <td> 66 </td> <td> 66_1 </td> <td> 66 </td> <td> 66_2 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 129550 </td> <td> 83 </td> <td> 83_1 </td> <td> 83 </td> <td> 83_2 </td> <td align="right"> 0.91 </td> <td align="right"> 0.09 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 132557 </td> <td> 86 </td> <td> 86 </td> <td> 86 </td> <td> 86_3_1 </td> <td align="right"> 0.81 </td> <td align="right"> 0.19 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 133154 </td> <td> 86 </td> <td> 86_1 </td> <td> 86 </td> <td> 86_3_1 </td> <td align="right"> 0.88 </td> <td align="right"> 0.12 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 133750 </td> <td> 86 </td> <td> 86_2 </td> <td> 86 </td> <td> 86_3_1 </td> <td align="right"> 0.92 </td> <td align="right"> 0.08 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 140252 </td> <td> 90 </td> <td> 90_1_1 </td> <td> 90 </td> <td> 90_2_1 </td> <td align="right"> 0.81 </td> <td align="right"> 0.19 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 161230 </td> <td> 107 </td> <td> 107_2_3 </td> <td> 107 </td> <td> 107_3 </td> <td align="right"> 0.74 </td> <td align="right"> 0.25 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 161231 </td> <td> 107 </td> <td> 107_2_3 </td> <td> 107 </td> <td> 107_4 </td> <td align="right"> 0.71 </td> <td align="right"> 0.29 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 166127 </td> <td> 110 </td> <td> 110_3 </td> <td> 110 </td> <td> 110_4_1 </td> <td align="right"> 0.60 </td> <td align="right"> 0.40 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 203311 </td> <td> 143 </td> <td> 143_1 </td> <td> 143 </td> <td> 143_2 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 216390 </td> <td> 156 </td> <td> 156_1 </td> <td> 156 </td> <td> 156_2 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 233053 </td> <td> 177 </td> <td> 177 </td> <td> 177 </td> <td> 177_1_3 </td> <td align="right"> 0.61 </td> <td align="right"> 0.39 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 249528 </td> <td> 195 </td> <td> 195_1 </td> <td> 195 </td> <td> 195_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 274800 </td> <td> 242 </td> <td> 242_1 </td> <td> 242 </td> <td> 242_2 </td> <td align="right"> 0.65 </td> <td align="right"> 0.34 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 275610 </td> <td> 243 </td> <td> 243_1 </td> <td> 243 </td> <td> 243_2 </td> <td align="right"> 0.98 </td> <td align="right"> 0.02 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 277203 </td> <td> 245 </td> <td> 245_1 </td> <td> 245 </td> <td> 245_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 284395 </td> <td> 259 </td> <td> 259_1_1 </td> <td> 259 </td> <td> 259_2 </td> <td align="right"> 0.70 </td> <td align="right"> 0.30 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 286005 </td> <td> 264 </td> <td> 264_1 </td> <td> 264 </td> <td> 264_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 292741 </td> <td> 283 </td> <td> 283_1 </td> <td> 283 </td> <td> 283_2 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 293701 </td> <td> 285 </td> <td> 285_1 </td> <td> 285 </td> <td> 285_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 304516 </td> <td> 321 </td> <td> 321_1 </td> <td> 321 </td> <td> 321_2 </td> <td align="right"> 0.97 </td> <td align="right"> 0.03 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 307096 </td> <td> 333 </td> <td> 333_1 </td> <td> 333 </td> <td> 333_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.01 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 310116 </td> <td> 357 </td> <td> 357_1 </td> <td> 357 </td> <td> 357_2 </td> <td align="right"> 0.99 </td> <td align="right"> 0.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 311466 </td> <td> 810 </td> <td> 810 </td> <td> 810 </td> <td> 810_1 </td> <td align="right"> 0.73 </td> <td align="right"> 0.27 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 311485 </td> <td> 810 </td> <td> 810_1 </td> <td> 810 </td> <td> 810_2 </td> <td align="right"> 0.70 </td> <td align="right"> 0.30 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 311655 </td> <td> SAKNAS </td> <td> 254_1 </td> <td> SAKNAS </td> <td> 33551 </td> <td align="right"> 0.98 </td> <td align="right"> 0.02 </td> <td align="right"> 0.00 </td> </tr>
   </table>

**Parent-Offspring:**
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 124690 </td> <td> 80 </td> <td> 80 </td> <td> 80 </td> <td> 80_1 </td> <td align="right"> 0.00 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 235020 </td> <td> 178 </td> <td> 178 </td> <td> 178 </td> <td> 178_1 </td> <td align="right"> 0.00 </td> <td align="right"> 1.00 </td> <td align="right"> 0.00 </td> </tr>
   </table>

**Full siblings:**


**Half siblings:** (note that true uncles and aunts will also be listed here)
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 790 </td> <td> 1 </td> <td> 1_1 </td> <td> 1 </td> <td> 1_2 </td> <td align="right"> 0.54 </td> <td align="right"> 0.46 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 5503 </td> <td> 3 </td> <td> 3_1 </td> <td> 3 </td> <td> 3_2 </td> <td align="right"> 0.41 </td> <td align="right"> 0.59 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 14050 </td> <td> 7 </td> <td> 7_1 </td> <td> 7 </td> <td> 7_2 </td> <td align="right"> 0.51 </td> <td align="right"> 0.49 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 34516 </td> <td> 20 </td> <td> 20_3 </td> <td> 20 </td> <td> 20_4 </td> <td align="right"> 0.51 </td> <td align="right"> 0.49 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 42645 </td> <td> 24 </td> <td> 24_1 </td> <td> 24 </td> <td> 24_2 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 48482 </td> <td> 32 </td> <td> 32_2 </td> <td> 32 </td> <td> 32_4 </td> <td align="right"> 0.50 </td> <td align="right"> 0.50 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 49206 </td> <td> 32 </td> <td> 32_3 </td> <td> 32 </td> <td> 32_4 </td> <td align="right"> 0.51 </td> <td align="right"> 0.49 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 56403 </td> <td> 37 </td> <td> 37 </td> <td> 37 </td> <td> 37_3 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 57116 </td> <td> 37 </td> <td> 37_1 </td> <td> 37 </td> <td> 37_3 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 59961 </td> <td> 38 </td> <td> 38_1 </td> <td> 38 </td> <td> 38_2 </td> <td align="right"> 0.59 </td> <td align="right"> 0.41 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 72570 </td> <td> 45 </td> <td> 45_1 </td> <td> 45 </td> <td> 45_2 </td> <td align="right"> 0.44 </td> <td align="right"> 0.56 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 84855 </td> <td> 52 </td> <td> 52_1 </td> <td> 52 </td> <td> 52_2 </td> <td align="right"> 0.50 </td> <td align="right"> 0.50 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 89545 </td> <td> 55 </td> <td> 55_1 </td> <td> 55 </td> <td> 55_2 </td> <td align="right"> 0.54 </td> <td align="right"> 0.46 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 94845 </td> <td> 58 </td> <td> 58_1 </td> <td> 58 </td> <td> 58_2 </td> <td align="right"> 0.52 </td> <td align="right"> 0.47 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 139079 </td> <td> 90 </td> <td> 90 </td> <td> 90 </td> <td> 90_1_1 </td> <td align="right"> 0.46 </td> <td align="right"> 0.54 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 139667 </td> <td> 90 </td> <td> 90_1 </td> <td> 90 </td> <td> 90_2_1 </td> <td align="right"> 0.49 </td> <td align="right"> 0.51 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 140251 </td> <td> 90 </td> <td> 90_1_1 </td> <td> 90 </td> <td> 90_2 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 140253 </td> <td> 90 </td> <td> 90_1_1 </td> <td> 90 </td> <td> 90_3 </td> <td align="right"> 0.44 </td> <td align="right"> 0.55 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 150060 </td> <td> 98 </td> <td> 98_1 </td> <td> 98 </td> <td> 98_2 </td> <td align="right"> 0.57 </td> <td align="right"> 0.42 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 159582 </td> <td> 107 </td> <td> 107 </td> <td> 107 </td> <td> 107_2_3 </td> <td align="right"> 0.48 </td> <td align="right"> 0.50 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 160132 </td> <td> 107 </td> <td> 107_1 </td> <td> 107 </td> <td> 107_2_3 </td> <td align="right"> 0.49 </td> <td align="right"> 0.51 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 160133 </td> <td> 107 </td> <td> 107_1 </td> <td> 107 </td> <td> 107_3 </td> <td align="right"> 0.51 </td> <td align="right"> 0.49 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 160134 </td> <td> 107 </td> <td> 107_1 </td> <td> 107 </td> <td> 107_4 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 160682 </td> <td> 107 </td> <td> 107_2 </td> <td> 107 </td> <td> 107_3 </td> <td align="right"> 0.52 </td> <td align="right"> 0.48 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 160683 </td> <td> 107 </td> <td> 107_2 </td> <td> 107 </td> <td> 107_4 </td> <td align="right"> 0.52 </td> <td align="right"> 0.48 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 164508 </td> <td> 110 </td> <td> 110 </td> <td> 110 </td> <td> 110_4_2 </td> <td align="right"> 0.58 </td> <td align="right"> 0.41 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 165048 </td> <td> 110 </td> <td> 110_1 </td> <td> 110 </td> <td> 110_4_1 </td> <td align="right"> 0.46 </td> <td align="right"> 0.54 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 165049 </td> <td> 110 </td> <td> 110_1 </td> <td> 110 </td> <td> 110_4_2 </td> <td align="right"> 0.53 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 165588 </td> <td> 110 </td> <td> 110_2 </td> <td> 110 </td> <td> 110_4_1 </td> <td align="right"> 0.56 </td> <td align="right"> 0.44 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 165589 </td> <td> 110 </td> <td> 110_2 </td> <td> 110 </td> <td> 110_4_2 </td> <td align="right"> 0.59 </td> <td align="right"> 0.41 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 166128 </td> <td> 110 </td> <td> 110_3 </td> <td> 110 </td> <td> 110_4_2 </td> <td align="right"> 0.60 </td> <td align="right"> 0.40 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 167204 </td> <td> 110 </td> <td> 110_4_1 </td> <td> 110 </td> <td> 110_5 </td> <td align="right"> 0.52 </td> <td align="right"> 0.48 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 167740 </td> <td> 110 </td> <td> 110_4_2 </td> <td> 110 </td> <td> 110_5 </td> <td align="right"> 0.54 </td> <td align="right"> 0.46 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 169345 </td> <td> 111 </td> <td> 111_1 </td> <td> 111 </td> <td> 111_2 </td> <td align="right"> 0.47 </td> <td align="right"> 0.53 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 199081 </td> <td> 138 </td> <td> 138_1 </td> <td> 138 </td> <td> 138_2 </td> <td align="right"> 0.52 </td> <td align="right"> 0.47 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 210631 </td> <td> 151 </td> <td> 151_1 </td> <td> 151 </td> <td> 151_2 </td> <td align="right"> 0.48 </td> <td align="right"> 0.52 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 212866 </td> <td> 153 </td> <td> 153_1 </td> <td> 153 </td> <td> 153_2 </td> <td align="right"> 0.48 </td> <td align="right"> 0.51 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 215076 </td> <td> 155 </td> <td> 155_1 </td> <td> 155 </td> <td> 155_2 </td> <td align="right"> 0.46 </td> <td align="right"> 0.54 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 219850 </td> <td> 159 </td> <td> 159_1 </td> <td> 159 </td> <td> 159_2 </td> <td align="right"> 0.47 </td> <td align="right"> 0.51 </td> <td align="right"> 0.02 </td> </tr>
  <tr> <td align="right"> 221133 </td> <td> 160 </td> <td> 160_1 </td> <td> 160 </td> <td> 160_5 </td> <td align="right"> 0.52 </td> <td align="right"> 0.47 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 221134 </td> <td> 160 </td> <td> 160_1 </td> <td> 160 </td> <td> 160_6 </td> <td align="right"> 0.46 </td> <td align="right"> 0.54 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 221557 </td> <td> 160 </td> <td> 160_2 </td> <td> 160 </td> <td> 160_5 </td> <td align="right"> 0.60 </td> <td align="right"> 0.40 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 221558 </td> <td> 160 </td> <td> 160_2 </td> <td> 160 </td> <td> 160_6 </td> <td align="right"> 0.58 </td> <td align="right"> 0.42 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 221980 </td> <td> 160 </td> <td> 160_3 </td> <td> 160 </td> <td> 160_5 </td> <td align="right"> 0.56 </td> <td align="right"> 0.43 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 221981 </td> <td> 160 </td> <td> 160_3 </td> <td> 160 </td> <td> 160_6 </td> <td align="right"> 0.56 </td> <td align="right"> 0.44 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 230250 </td> <td> 174 </td> <td> 174_1 </td> <td> 174 </td> <td> 174_2 </td> <td align="right"> 0.45 </td> <td align="right"> 0.55 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 231456 </td> <td> 175 </td> <td> 175_1 </td> <td> 175 </td> <td> 175_2 </td> <td align="right"> 0.45 </td> <td align="right"> 0.55 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 233052 </td> <td> 177 </td> <td> 177 </td> <td> 177 </td> <td> 177_1_2 </td> <td align="right"> 0.57 </td> <td align="right"> 0.43 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 233841 </td> <td> 177 </td> <td> 177_1_1 </td> <td> 177 </td> <td> 177_1_2 </td> <td align="right"> 0.49 </td> <td align="right"> 0.51 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 233842 </td> <td> 177 </td> <td> 177_1_1 </td> <td> 177 </td> <td> 177_1_3 </td> <td align="right"> 0.48 </td> <td align="right"> 0.52 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 243760 </td> <td> 189 </td> <td> 189_1 </td> <td> 189 </td> <td> 189_2 </td> <td align="right"> 0.41 </td> <td align="right"> 0.58 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 255711 </td> <td> 203 </td> <td> 203_1 </td> <td> 203 </td> <td> 203_2 </td> <td align="right"> 0.46 </td> <td align="right"> 0.53 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 271186 </td> <td> 234 </td> <td> 234_1 </td> <td> 234 </td> <td> 234_2 </td> <td align="right"> 0.46 </td> <td align="right"> 0.53 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 283927 </td> <td> 259 </td> <td> 259 </td> <td> 259 </td> <td> 259_1_1 </td> <td align="right"> 0.46 </td> <td align="right"> 0.54 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 284162 </td> <td> 259 </td> <td> 259_1 </td> <td> 259 </td> <td> 259_2 </td> <td align="right"> 0.42 </td> <td align="right"> 0.58 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 303528 </td> <td> 317 </td> <td> 317_1 </td> <td> 317 </td> <td> 317_2 </td> <td align="right"> 0.55 </td> <td align="right"> 0.44 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 304517 </td> <td> 321 </td> <td> 321_1 </td> <td> 321 </td> <td> 321_3 </td> <td align="right"> 0.54 </td> <td align="right"> 0.46 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 304635 </td> <td> 321 </td> <td> 321_2 </td> <td> 321 </td> <td> 321_3 </td> <td align="right"> 0.44 </td> <td align="right"> 0.56 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 305554 </td> <td> 326 </td> <td> 326_1 </td> <td> 326 </td> <td> 326_5 </td> <td align="right"> 0.43 </td> <td align="right"> 0.56 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 305663 </td> <td> 326 </td> <td> 326_2 </td> <td> 326 </td> <td> 326_5 </td> <td align="right"> 0.52 </td> <td align="right"> 0.47 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 305771 </td> <td> 326 </td> <td> 326_3 </td> <td> 326 </td> <td> 326_5 </td> <td align="right"> 0.52 </td> <td align="right"> 0.48 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 305878 </td> <td> 326 </td> <td> 326_4 </td> <td> 326 </td> <td> 326_5 </td> <td align="right"> 0.48 </td> <td align="right"> 0.52 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 311095 </td> <td> 603 </td> <td> 603_1 </td> <td> 603 </td> <td> 603_2 </td> <td align="right"> 0.55 </td> <td align="right"> 0.45 </td> <td align="right"> 0.00 </td> </tr>
   </table>

**Monozygotic twins:**


------
### Declared as Unrelated

**Parent-Offspring:**
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 282251 </td> <td> 254 </td> <td> 254 </td> <td> SAKNAS </td> <td> 254_1 </td> <td align="right"> 0.00 </td> <td align="right"> 0.99 </td> <td align="right"> 0.01 </td> </tr>
   </table>

**Full siblings:**


**Half siblings:** (note that true uncles and aunts will also be listed here)
<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 286075 </td> <td> 264 </td> <td> 264_1 </td> <td> 303 </td> <td> 303 </td> <td align="right"> 0.44 </td> <td align="right"> 0.56 </td> <td align="right"> 0.00 </td> </tr>
   </table>

**Monozygotic twins:**

------

## Details about unexplained conflicts


Unresolved conflicts among **Parent-Offspring** pairs:

[1] "...none..."

Unresolved conflicts among **Unrelated** pairs:

<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 23009 </td> <td> 14 </td> <td> 14 </td> <td> 264 </td> <td> 264_1 </td> <td align="right"> 0.76 </td> <td align="right"> 0.24 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 23080 </td> <td> 14 </td> <td> 14 </td> <td> 303 </td> <td> 303 </td> <td align="right"> 0.75 </td> <td align="right"> 0.25 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 23768 </td> <td> 14 </td> <td> 14_1 </td> <td> 264 </td> <td> 264_1 </td> <td align="right"> 0.79 </td> <td align="right"> 0.21 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 23839 </td> <td> 14 </td> <td> 14_1 </td> <td> 303 </td> <td> 303 </td> <td align="right"> 0.78 </td> <td align="right"> 0.22 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 24526 </td> <td> 14 </td> <td> 14_2 </td> <td> 264 </td> <td> 264_1 </td> <td align="right"> 0.76 </td> <td align="right"> 0.24 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 24597 </td> <td> 14 </td> <td> 14_2 </td> <td> 303 </td> <td> 303 </td> <td align="right"> 0.76 </td> <td align="right"> 0.24 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 113188 </td> <td> 72 </td> <td> 72_2 </td> <td> 204 </td> <td> 204 </td> <td align="right"> 0.74 </td> <td align="right"> 0.26 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 210106 </td> <td> 150 </td> <td> 150_1 </td> <td> 345 </td> <td> 345 </td> <td align="right"> 0.70 </td> <td align="right"> 0.30 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 210107 </td> <td> 150 </td> <td> 150_1 </td> <td> 345 </td> <td> 345_1 </td> <td align="right"> 0.72 </td> <td align="right"> 0.28 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 225343 </td> <td> 164 </td> <td> 164 </td> <td> 172 </td> <td> 172 </td> <td align="right"> 0.66 </td> <td align="right"> 0.34 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 225344 </td> <td> 164 </td> <td> 164 </td> <td> 172 </td> <td> 172_1 </td> <td align="right"> 0.79 </td> <td align="right"> 0.21 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 285849 </td> <td> 264 </td> <td> 264 </td> <td> 303 </td> <td> 303 </td> <td align="right"> 0.78 </td> <td align="right"> 0.21 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 286076 </td> <td> 264 </td> <td> 264_1 </td> <td> 303 </td> <td> 303_1 </td> <td align="right"> 0.71 </td> <td align="right"> 0.28 </td> <td align="right"> 0.01 </td> </tr>
  <tr> <td align="right"> 311647 </td> <td> 31840 </td> <td> 31840 </td> <td> 43810 </td> <td> 43810 </td> <td align="right"> 0.18 </td> <td align="right"> 0.52 </td> <td align="right"> 0.30 </td> </tr>
   </table>

Unresolved conflicts among **Full Sibling** pairs:

[1] "...none..."

Unresolved conflicts among **Other-Type** pairs:

<table border=1>
<tr> <th>  </th> <th> FID1 </th> <th> IID1 </th> <th> FID2 </th> <th> IID2 </th> <th> Z0 </th> <th> Z1 </th> <th> Z2 </th>  </tr>
  <tr> <td align="right"> 139081 </td> <td> 90 </td> <td> 90 </td> <td> 90 </td> <td> 90_2_1 </td> <td align="right"> 0.35 </td> <td align="right"> 0.65 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 141420 </td> <td> 90 </td> <td> 90_2_1 </td> <td> 90 </td> <td> 90_3 </td> <td align="right"> 0.40 </td> <td align="right"> 0.60 </td> <td align="right"> 0.00 </td> </tr>
  <tr> <td align="right"> 164507 </td> <td> 110 </td> <td> 110 </td> <td> 110 </td> <td> 110_4_1 </td> <td align="right"> 0.59 </td> <td align="right"> 0.39 </td> <td align="right"> 0.02 </td> </tr>
   </table>





