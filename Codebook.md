# Codebook
This codebook describes the input, processing and output of the script run_analysis.R

## Input
* Download the zip-file on the following location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* More information on this file can be found on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* Extract the contents of the file in your working directory. Leave the subfolder structure intact.

* You must have the plyr package installed in R

## Processing
The following steps are executed during the processing of your files:

1. All the needed files are read into data frames
2. Test and trainig data are merged into data frames
3. The IDs of activities are replaced by proper names of activities
4. Each data frame gets proper column names.
5. Only the variables containing mean and standard deviation information are retained in the dataset
6. Since the labels of the variables are rather cryptic, they are replaced by easy readable labels
7. The different datasets are finally merged into one dataset containing all the information
8. By means of the plyr-library, the observations are summarized into mean values for each combination of Subject and Activity.

## Output
The generated file is called RunAnalysis.txt.

This file contains exactly one row for each combination of Subject and Activity in the original files.

The generated file contains the following fields:

*Fields whose name starts with "Time:" are expressed in seconds*

* Subject: ID of the measured subject                                                               
* Activity: description of the measured activity for this subject                                   
* Time: Body Accelerometer - Mean -X                                    
* Time: Body Accelerometer - Mean -Y                                    
* Time: Body Accelerometer - Mean -Z                                    
* Time: Gravity Accelerometer - Mean -X                                 
* Time: Gravity Accelerometer - Mean -Y                                 
* Time: Gravity Accelerometer - Mean -Z                                 
* Time: Body Accelerometer Jerk- Mean -X                                
* Time: Body Accelerometer Jerk- Mean -Y                                
* Time: Body Accelerometer Jerk- Mean -Z                                
* Time: BodyGyroscope - Mean -X                                         
* Time: BodyGyroscope - Mean -Y                                         
* Time: BodyGyroscope - Mean -Z                                         
* Time: BodyGyroscope Jerk- Mean -X                                     
* Time: BodyGyroscope Jerk- Mean -Y                                     
* Time: BodyGyroscope Jerk- Mean -Z                                     
* Time: Body Accelerometer Magnitude - Mean                             
* Time: Gravity Accelerometer Magnitude - Mean                          
* Time: Body Accelerometer Jerk Magnitude - Mean                        
* Time: BodyGyroscope Magnitude - Mean                                  
* Time: BodyGyroscope Jerk Magnitude - Mean                             
* Frequency: Body Accelerometer - Mean -X                               
* Frequency: Body Accelerometer - Mean -Y                               
* Frequency: Body Accelerometer - Mean -Z                               
* Frequency: Body Accelerometer - Mean Frequency -X                     
* Frequency: Body Accelerometer - Mean Frequency -Y                     
* Frequency: Body Accelerometer - Mean Frequency -Z                     
* Frequency: Body Accelerometer Jerk- Mean -X                           
* Frequency: Body Accelerometer Jerk- Mean -Y                           
* Frequency: Body Accelerometer Jerk- Mean -Z                           
* Frequency: Body Accelerometer Jerk- Mean Frequency -X                 
* Frequency: Body Accelerometer Jerk- Mean Frequency -Y                 
* Frequency: Body Accelerometer Jerk- Mean Frequency -Z                 
* Frequency: BodyGyroscope - Mean -X                                    
* Frequency: BodyGyroscope - Mean -Y                                    
* Frequency: BodyGyroscope - Mean -Z                                    
* Frequency: BodyGyroscope - Mean Frequency -X                          
* Frequency: BodyGyroscope - Mean Frequency -Y                          
* Frequency: BodyGyroscope - Mean Frequency -Z                          
* Frequency: Body Accelerometer Magnitude - Mean                        
* Frequency: Body Accelerometer Magnitude - Mean Frequency              
* Frequency: BodyBody Accelerometer Jerk Magnitude - Mean               
* Frequency: BodyBody Accelerometer Jerk Magnitude - Mean Frequency     
* Frequency: BodyBodyGyroscope Magnitude - Mean                         
* Frequency: BodyBodyGyroscope Magnitude - Mean Frequency               
* Frequency: BodyBodyGyroscope Jerk Magnitude - Mean                    
* Frequency: BodyBodyGyroscope Jerk Magnitude - Mean Frequency          
* Time: Body Accelerometer - Standard Deviation -X                      
* Time: Body Accelerometer - Standard Deviation -Y                      
* Time: Body Accelerometer - Standard Deviation -Z                      
* Time: Gravity Accelerometer - Standard Deviation -X                   
* Time: Gravity Accelerometer - Standard Deviation -Y                   
* Time: Gravity Accelerometer - Standard Deviation -Z                   
* Time: Body Accelerometer Jerk- Standard Deviation -X                  
* Time: Body Accelerometer Jerk- Standard Deviation -Y                  
* Time: Body Accelerometer Jerk- Standard Deviation -Z                  
* Time: BodyGyroscope - Standard Deviation -X                           
* Time: BodyGyroscope - Standard Deviation -Y                           
* Time: BodyGyroscope - Standard Deviation -Z                           
* Time: BodyGyroscope Jerk- Standard Deviation -X                       
* Time: BodyGyroscope Jerk- Standard Deviation -Y                       
* Time: BodyGyroscope Jerk- Standard Deviation -Z                       
* Time: Body Accelerometer Magnitude - Standard Deviation               
* Time: Gravity Accelerometer Magnitude - Standard Deviation            
* Time: Body Accelerometer Jerk Magnitude - Standard Deviation          
* Time: BodyGyroscope Magnitude - Standard Deviation                    
* Time: BodyGyroscope Jerk Magnitude - Standard Deviation               
* Frequency: Body Accelerometer - Standard Deviation -X                 
* Frequency: Body Accelerometer - Standard Deviation -Y                 
* Frequency: Body Accelerometer - Standard Deviation -Z                 
* Frequency: Body Accelerometer Jerk- Standard Deviation -X             
* Frequency: Body Accelerometer Jerk- Standard Deviation -Y             
* Frequency: Body Accelerometer Jerk- Standard Deviation -Z             
* Frequency: BodyGyroscope - Standard Deviation -X                      
* Frequency: BodyGyroscope - Standard Deviation -Y                      
* Frequency: BodyGyroscope - Standard Deviation -Z                      
* Frequency: Body Accelerometer Magnitude - Standard Deviation          
* Frequency: BodyBody Accelerometer Jerk Magnitude - Standard Deviation 
* Frequency: BodyBodyGyroscope Magnitude - Standard Deviation           
* Frequency: BodyBodyGyroscope Jerk Magnitude - Standard Deviation 
