CodeBook.md for "tidy2.csv"
This is the code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.


# Variables: 
 [1] "subject":
      the subject is the identification number of the volunteers. 
      The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
                                      
 [2] "activity"
      Each person performed six activities 
      (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
      wearing a smartphone (Samsung Galaxy S II) on the waist.
      1 WALKING
      2 WALKING_UPSTAIRS
      3 WALKING_DOWNSTAIRS
      4 SITTING
      5 STANDING
      6 LAYING                                   

 [3] "Mean_timeBodyAccelerometer_std_X"                   
      Keys for variables [3-81]:
         Mean: average of the records for each activity and each subject.
         time: time domain data
         frequency: frequency domain data
     	 Body: body acceleration signals
         gravity: gravity acceleration signals
 	 Accelerometer: accelerometer and gyroscope 3-axial raw signals
         Gyroscope: accelerometer and gyroscope 3-axial raw signals
	 std: standard deviation of the raw data
	 mean: average of the raw data
	 "-XYZ" is used to denote 3-axial signals in the X, Y and Z directions
 [4] "Mean_timeBodyAccelerometer_std_Y"                   
 [5] "Mean_timeBodyAccelerometer_std_Z"                   
 [6] "Mean_timeGravityAccelerometer_std_X"                
 [7] "Mean_timeGravityAccelerometer_std_Y"                
 [8] "Mean_timeGravityAccelerometer_std_Z"                
 [9] "Mean_timeBodyAccelerometerJerk_std_X"               
[10] "Mean_timeBodyAccelerometerJerk_std_Y"               
[11] "Mean_timeBodyAccelerometerJerk_std_Z"               
[12] "Mean_timeBodyGyroscope_std_X"                       
[13] "Mean_timeBodyGyroscope_std_Y"                       
[14] "Mean_timeBodyGyroscope_std_Z"                       
[15] "Mean_timeBodyGyroscopeJerk_std_X"                   
[16] "Mean_timeBodyGyroscopeJerk_std_Y"                   
[17] "Mean_timeBodyGyroscopeJerk_std_Z"                   
[18] "Mean_timeBodyAccelerometerMag_std"                  
[19] "Mean_timeGravityAccelerometerMag_std"               
[20] "Mean_timeBodyAccelerometerJerkMag_std"              
[21] "Mean_timeBodyGyroscopeMag_std"                      
[22] "Mean_timeBodyGyroscopeJerkMag_std"                  
[23] "Mean_frequencyBodyAccelerometer_std_X"              
[24] "Mean_frequencyBodyAccelerometer_std_Y"              
[25] "Mean_frequencyBodyAccelerometer_std_Z"              
[26] "Mean_frequencyBodyAccelerometerJerk_std_X"          
[27] "Mean_frequencyBodyAccelerometerJerk_std_Y"          
[28] "Mean_frequencyBodyAccelerometerJerk_std_Z"          
[29] "Mean_frequencyBodyGyroscope_std_X"                  
[30] "Mean_frequencyBodyGyroscope_std_Y"                  
[31] "Mean_frequencyBodyGyroscope_std_Z"                  
[32] "Mean_frequencyBodyAccelerometerMag_std"             
[33] "Mean_frequencyBodyBodyAccelerometerJerkMag_std"     
[34] "Mean_frequencyBodyBodyGyroscopeMag_std"             
[35] "Mean_frequencyBodyBodyGyroscopeJerkMag_std"         
[36] "Mean_timeBodyAccelerometer_mean_X"                  
[37] "Mean_timeBodyAccelerometer_mean_Y"                  
[38] "Mean_timeBodyAccelerometer_mean_Z"                  
[39] "Mean_timeGravityAccelerometer_mean_X"               
[40] "Mean_timeGravityAccelerometer_mean_Y"               
[41] "Mean_timeGravityAccelerometer_mean_Z"               
[42] "Mean_timeBodyAccelerometerJerk_mean_X"              
[43] "Mean_timeBodyAccelerometerJerk_mean_Y"              
[44] "Mean_timeBodyAccelerometerJerk_mean_Z"              
[45] "Mean_timeBodyGyroscope_mean_X"                      
[46] "Mean_timeBodyGyroscope_mean_Y"                      
[47] "Mean_timeBodyGyroscope_mean_Z"                      
[48] "Mean_timeBodyGyroscopeJerk_mean_X"                  
[49] "Mean_timeBodyGyroscopeJerk_mean_Y"                  
[50] "Mean_timeBodyGyroscopeJerk_mean_Z"                  
[51] "Mean_timeBodyAccelerometerMag_mean"                 
[52] "Mean_timeGravityAccelerometerMag_mean"              
[53] "Mean_timeBodyAccelerometerJerkMag_mean"             
[54] "Mean_timeBodyGyroscopeMag_mean"                     
[55] "Mean_timeBodyGyroscopeJerkMag_mean"                 
[56] "Mean_frequencyBodyAccelerometer_mean_X"             
[57] "Mean_frequencyBodyAccelerometer_mean_Y"             
[58] "Mean_frequencyBodyAccelerometer_mean_Z"             
[59] "Mean_frequencyBodyAccelerometer_meanFreq_X"         
[60] "Mean_frequencyBodyAccelerometer_meanFreq_Y"         
[61] "Mean_frequencyBodyAccelerometer_meanFreq_Z"         
[62] "Mean_frequencyBodyAccelerometerJerk_mean_X"         
[63] "Mean_frequencyBodyAccelerometerJerk_mean_Y"         
[64] "Mean_frequencyBodyAccelerometerJerk_mean_Z"         
[65] "Mean_frequencyBodyAccelerometerJerk_meanFreq_X"     
[66] "Mean_frequencyBodyAccelerometerJerk_meanFreq_Y"     
[67] "Mean_frequencyBodyAccelerometerJerk_meanFreq_Z"     
[68] "Mean_frequencyBodyGyroscope_mean_X"                 
[69] "Mean_frequencyBodyGyroscope_mean_Y"                 
[70] "Mean_frequencyBodyGyroscope_mean_Z"                 
[71] "Mean_frequencyBodyGyroscope_meanFreq_X"             
[72] "Mean_frequencyBodyGyroscope_meanFreq_Y"             
[73] "Mean_frequencyBodyGyroscope_meanFreq_Z"             
[74] "Mean_frequencyBodyAccelerometerMag_mean"            
[75] "Mean_frequencyBodyAccelerometerMag_meanFreq"        
[76] "Mean_frequencyBodyBodyAccelerometerJerkMag_mean"    
[77] "Mean_frequencyBodyBodyAccelerometerJerkMag_meanFreq"
[78] "Mean_frequencyBodyBodyGyroscopeMag_mean"            
[79] "Mean_frequencyBodyBodyGyroscopeMag_meanFreq"        
[80] "Mean_frequencyBodyBodyGyroscopeJerkMag_mean"        
[81] "Mean_frequencyBodyBodyGyroscopeJerkMag_meanFreq"   

# The Data: 
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The original dataset can be download from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
It includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



# Data_clean steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.