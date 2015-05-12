# AsaQC_CoreExome
Asa's genotyping on Gore Exome chip

### Files contained in this project
So far, all the scripts required for pre-QC and QC stages have been uploaded.  
**Main launchers** are **pipeline1.sh, pipeline2.sh and pipeline3.sh**. These files launch all the other R scripts involved in file editing, cutoff selection and report generation.  
**Reference conversion** is performed by launching convert_HAP-PED.sh, which itself requires several additional R scripts.
The only **manual usage** script so far is **remove_inds.sh**, to be used for removing individuals after pipeline1.sh or at any other time.
