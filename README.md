# AsaQC_CoreExome
Asa's genotyping on Gore Exome chip

### Files contained in this project
So far, all the scripts required for pre-QC and QC stages have been uploaded.  
**Main launchers** are **pipeline1.sh, pipeline2.sh and pipeline3.sh**. These files launch all the other R scripts involved in file editing, cutoff selection and report generation.  
**Reference conversion** is performed by launching convert_HAP-PED.sh, which itself requires several additional R scripts.
The only **manual usage** script so far is **remove_inds.sh**, to be used for removing individuals after pipeline1.sh or at any other time.

### Folder structure
Upon running, pipeline1 starts a new main directory for all files. The main directory contains a suffix indicating the date of creation and first symbols of newest local git hash. It contains all the reports, as well as the initial and final data files. All intermediate files and logs will be found in respective subdirectories.  
All the scripts can be present in any other place, since the path to data directories must be passed to pipeline*.sh with appropriate flags.  
By default, pipeline2 and 3.sh use folders created on the current day, but this behavior can be overridden with appropriate flags.
