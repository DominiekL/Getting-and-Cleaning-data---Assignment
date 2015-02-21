run_analysis <- function(testdir="test",traindir="train"){
  # read all the files that are needed for this script
  Y_Test <- read.table(file.path(testdir,"Y_test.txt"))
  Y_Train <- read.table(file.path(traindir,"Y_train.txt"))
  X_Test <- read.table(file.path(testdir,"X_test.txt"))
  X_Train <- read.table(file.path(traindir,"X_train.txt"))
  Subj_Test <- read.table(file.path(testdir,"subject_test.txt"))
  Subj_Train <- read.table(file.path(traindir,"subject_train.txt"))
  Features <- read.table(file.path("features.txt"))
  Activities <- read.table(file.path("activity_labels.txt"))
  
  # combine test and training data into one data frame, for each element
  X_Full <- rbind(X_Test,X_Train)
  Y_Full <- rbind(Y_Test,Y_Train)
  Subj_Full <- rbind(Subj_Test,Subj_Train)
  
  # replace activity IDs with activity names
  Y_Activities <- merge(Y_Full,Activities,all=TRUE)
  Y_Full <- data.frame(Y_Activities$V2)
  
  # add a column title to each data frame
  colnames(Subj_Full)<-c("Subject")
  colnames(Y_Full)<-c("Activity")
  Xlabels <- read.table(file.path("features.txt"))
  colnames(X_Full)<-Xlabels$V2
  
  # only retain the columns in X_Full containing "mean()" and "std()"
  meanColumns=grep("mean()",MeanStandardColumns)
  stdColumns=grep("std()",MeanStandardColumns)
  relevantColumns<-c(meanColumns,stdColumns)
  relevantXColumns<-MeanStandardColumns[relevantColumns]
  X_Full<-X_Full[,which(names(X_Full) %in% relevantXColumns)]
  
  # replace labels of X_Full with descriptive labels
  relevantXColumns<-gsub("^t", "Time: ",relevantXColumns)
  relevantXColumns<-gsub("^f", "Frequency: ",relevantXColumns)
  relevantXColumns<-gsub("Acc", " Accelerometer ",relevantXColumns)
  relevantXColumns<-gsub("Gyro", "Gyroscope ",relevantXColumns)
  relevantXColumns<-gsub("Mag", " Magnitude ",relevantXColumns)
  relevantXColumns<-gsub("mean\\(\\)", " Mean ",relevantXColumns)
  relevantXColumns<-gsub("meanFreq\\(\\)", " Mean Frequency ",relevantXColumns)
  relevantXColumns<-gsub("std\\(\\)", " Standard Deviation ",relevantXColumns)
  relevantXColumns<-gsub("  ", " ",relevantXColumns)
  relevantXColumns<-gsub("Jerk-", "Jerk -",relevantXColumns)
  names(X_Full)<-relevantXColumns
  
  # merge columns into one data frame
  FullData <- cbind(Subj_Full,Y_Full)
  FullData <- cbind(FullData,X_Full)
  
  # Create a new data set with average values
  library(plyr)
  means <- aggregate(. ~Subject + Activity, FullData, mean)
  means <- means[order(means$Subject,means$Activity),]
  write.table(means,file="RunAnalysis.txt",row.name=FALSE)
  
  library(knitr)
  
}