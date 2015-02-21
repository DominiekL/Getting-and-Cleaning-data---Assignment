# Getting and cleaning data

The R script in this repository needs to be called from a working directory containing the datasets that can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

These datasets need to be unzipped as is in your working directory (leave the subdirectory structure as is).

When you call this R script from a chosen working directory:
* The files of the provided data set will be merged and cleaned up
* A summary of the Samsung Galaxy S smartphone observations will be created in your working directory as a new file, called RunAnalysis.txt.

This resulting file contains average values for each combination of:
* Subject that has been measured with the Samsung device
* Activity that has been measured

The average values are only generated for the mean- and standard deviation-observations from the original data sets.

# Codebook

More information about the executed transformation in the script are explained in the Codebook in this same repository.
