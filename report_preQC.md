

Main Report of Pre-QC Stage
========================================================

Report produced by J. Juodakis on **2015-06-15 14:47**

Data obtained from files **/home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/balin.bed**, /home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/balin.bim, /home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/balin.fam

Output written to directory /home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/pre-QC/

------------------------------------------

This is the main report encompassing these stages of analysis, starting from raw data:
* General statistics of raw data
* Temporary pre-QC filtering
* Genotyped and indicated sex check  
These stages should end up in manual adjustment of .fam file (change of sex, family indications, removal of unsuitable individuals).

# General statistics of raw data


```
## Warning in file(file, "rt"): cannot open file
## '/home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/balin.fam': No
## such file or directory
```

```
## Error in file(file, "rt"): cannot open the connection
```

```
## Warning in file(file, "rt"): cannot open file
## '/home/julius/Desktop/2015MAR/all_arrays/150615_87fb294/balin.bim': No
## such file or directory
```

```
## Error in file(file, "rt"): cannot open the connection
```

```
## Error in unique(fam$V1): object 'fam' not found
```

```
## Error in eval(expr, envir, enclos): object 'fam' not found
```

```
## Error in eval(expr, envir, enclos): object 'bim' not found
```

```
## Error in eval(expr, envir, enclos): object 'fam' not found
```

```
## Error in eval(expr, envir, enclos): object 'fam' not found
```

```
## Error in unique(fam[which(fam$V3 != 0), "V3"]): object 'fam' not found
```

```
## Error in unique(fam[which(fam$V4 != 0), "V4"]): object 'fam' not found
```

```
## Error in eval(expr, envir, enclos): object 'unq_pat_dcl' not found
```

```
## Error in eval(expr, envir, enclos): object 'unq_mat_dcl' not found
```

```
## Error in match(x, table, nomatch = 0L): object 'unq_pat_dcl' not found
```

```
## Error in match(x, table, nomatch = 0L): object 'unq_mat_dcl' not found
```

```
## Error in which((fam$V2 != 0) & (fam$V3 != 0) & (fam$V4 != 0)): object 'fam' not found
```

```
## Error in match(x, table, nomatch = 0L): object 'fam' not found
```























