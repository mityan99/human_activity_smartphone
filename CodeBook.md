Original Dataset Information
====================================================
This data set consists of sensor body measurements of 561 signals from 30 subjects performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone.
The training and test sets consist of 7352 and 2947 observations respectively

Further reading about the experiment and original dataset can be found here
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Transformation in R
===================================================
run_analysis.R - $ script that performed the following steps to the original datset
runXY.mean.std.group.txt - output file

Step 1) Data Gathering and Cleaning
- Each dataset was downloaded and assigned to named variables. For example, trainX, trainY, testX, testY, and etc
- Merged the training and test for each dataset (X, Y, and Subject)
- Assigned activity name based on the given activity code 
- Labeled the dataset with descriptive variable names 
- Consolidated the datasets into one tidy dataset with each row representing a subject and an activity performed with 
  columns representing different signal measurements.
  
Step 2) Data Transformation
- Extracted features with names that contain either the mean or standard deviation 
- Created a subset of data with subject, activity, and the feature names derived from the previous step
- Produced a summary view of average measurements for the selected features by each subject and activity 

Variables from the output file
===================================================
names(runXY.mean.std.group)

 [1] "subjectCode"                          "activityName"                         "tBodyAcc-mean()-X"                   
 [4] "tBodyAcc-mean()-Y"                    "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
 [7] "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                     "tGravityAcc-mean()-X"                
[10] "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                  "tBodyAccJerk-mean()-X"               
[16] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
[19] "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                 "tBodyGyro-mean()-X"                  
[22] "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                    "tBodyGyroJerk-mean()-X"              
[28] "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
[31] "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"                "tBodyAccMag-mean()"                  
[34] "tBodyAccMag-std()"                    "tGravityAccMag-mean()"                "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"                "tBodyGyroMag-mean()"                 
[40] "tBodyGyroMag-std()"                   "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
[43] "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                    "fBodyAcc-mean()-Z"                   
[46] "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[49] "fBodyAccJerk-mean()-X"                "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
[52] "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                 "fBodyAccJerk-std()-Z"                
[55] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                  
[58] "fBodyGyro-std()-X"                    "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
[61] "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                    "fBodyBodyAccJerkMag-mean()"          
[64] "fBodyBodyAccJerkMag-std()"            "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-std()"              
[67] "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"           "angle(tBodyAccJerkMean),gravityMean)"
[70] "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[73] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"                

Variables Description Extracted from Feature_Info.txt of the original dataset
===================================================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
