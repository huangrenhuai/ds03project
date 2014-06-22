###run_analysis.R that does the following: 
###	1.	Merges the training and the test sets to create one data set.
###	2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
###	3.	Uses descriptive activity names to name the activities in the data set
###	4.	Appropriately labels the data set with descriptive variable names. 
###	5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

message("Instructions: 
# First download and unzip the data to local driver if you didn't do so. You only need do it once.
> getData() 
# Then you can do it all in one step: 
> runall() # do it all in one step 

# OR follow the step by step instruction:
> loadData() # loadData to memory
> cleanLabels() 
> mergeData()
> extractData() 
> tidyData()
> analyseData() ## here label. 
> writeData(filename) # you can change the filename.
> head(tidy2)
")
### Read the data
setwd("./") # set to your own working directory

getData <- function(){
  if (!file.exists("temp.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "temp.zip", method = "curl")
  unzip("temp.zip")}
}

loadData <-function(){
  message("loading data, it will take a few minutes. Please wait!!!")
  x_test <- "./UCI HAR Dataset/test/X_test.txt"
  x_train <- "./UCI HAR Dataset/train/X_train.txt"
  y_test <- "./UCI HAR Dataset/test/y_test.txt"
  y_train <- "./UCI HAR Dataset/train/y_train.txt"
  subject_test <- "./UCI HAR Dataset/test/subject_test.txt"
  subject_train <- "./UCI HAR Dataset/train/subject_train.txt"
  features <- "./UCI HAR Dataset/features.txt"

  featuresDF <<- read.table(features, stringsAsFactors=FALSE) ##561 obs. of  2 variables:
  message("loading test_dataset...")
  x_testDF <<- read.table(x_test) ##2947 obs. of  561 variables.
  message("loading train_dataset...")
  x_trainDF <<- read.table(x_train) ##7352 obs. of  561 variables.
  y_testDF <<- read.table(y_test)  ##2947 obs. of  1 variable:
  y_trainDF <<- read.table(y_train) ## 7352 obs. of  1 variable
  sub_testDF <<- read.table(subject_test) ## 2947 obs. of  1 variable
  sub_trainDF <<- read.table(subject_train) ##7352 obs. of  1 variable:
  activity_labelsDF <<-read.table("./UCI HAR Dataset/activity_labels.txt")
}
## end of loading data.

## update the variable name in featureDF
cleanLabels <- function(){
  featuresDF[,2] <- sub("^t", "time", featuresDF[,2])
  featuresDF[,2] <- sub("^f", "frequency", featuresDF[,2])
  featuresDF[,2] <- sub("\\()-", "_", featuresDF[,2])
  featuresDF[,2] <- sub("\\()$", "", featuresDF[,2])
  featuresDF[,2] <- sub("Acc", "Accelerometer", featuresDF[,2])
  featuresDF[,2] <- sub("Gyro", "Gyroscope", featuresDF[,2])
  featuresDF[,2] <<- sub("-", "_", featuresDF[,2])
}

## step 1. Merges the training and the test sets to create one data set.
## for (DF in c(x_testDF, x_trainDF)) {}
##add a column variable to record data source (test or train)
mergeData <- function(){
  colnames(x_testDF) <- featuresDF[,2]
  colnames(x_trainDF) <- featuresDF[,2]
  x_testDF$DataSource <- "test"
  x_trainDF$DataSource <- "train"
  ## merge the test data and the train data together
  ## and then import the column variable from features.txt     
  mergeDF <<- rbind(x_testDF, x_trainDF)  ## 10299 obs. of  561 variables
}  


## step 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
extractData <- function(){ 
  c(grep("std", colnames(mergeDF)), grep("mean", colnames(mergeDF)), length(mergeDF))-> columnSelected ##
  mergeDFupdate <<- mergeDF[,columnSelected] ##10299 obs. of  79 mean-std variables and DataSource column
}

## step 3. Uses descriptive activity names to name the activities in the data set
## Descriptive activity names means names based on the action the variable is recording, for example the Jerk of the body on the z axiz of the phone
tidyData <- function(){
  activityDF <-  rbind(y_testDF, y_trainDF) ## 10299 obs. of  1 variable
  activityDFupdate <- merge(activityDF, activity_labelsDF, by="V1")
  subjectDF <- rbind(sub_testDF, sub_trainDF) ##10299 obs. of  1 variable
  colnames(activityDFupdate) <- c("activity_number", "activity") 
  colnames(subjectDF) <- "subject" 
  df_tidy1 <<- cbind(mergeDFupdate, activityDFupdate, subjectDF)
}

## step 4. Appropriately labels the data set with descriptive variable names. 
##labels the data set it is talking about the variable names 
##(which at the moment are V1, V2, etc if you  have be following the steps in there numbered order. 
   
## step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
analyzeData <- function(){
  tidy1 <- df_tidy1[, c(82,83,1:79)]
  
  tidy2 <<- aggregate(.~subject+activity, FUN=mean, data=tidy1)
  colnames(tidy2)[3:81] <<- gsub("^", "Mean_", colnames(tidy2)[3:81])
}

## final step: write the data out to local driver
writeData <- function(fn="tidy2.csv"){
  write.csv(tidy2,file = fn) 
}

runall <- function(){
 getData()
 loadData()
 cleanLabels()
 mergeData()
 extractData()
 tidyData()
 analyzeData()
 writeData()
}