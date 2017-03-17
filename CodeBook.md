Original Dataset Information
====================================================
This data set consists of sensor body measurements of 561 signals from 30 subjects performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone.
The training and test sets consist of 7352 and 2947 observations respectively

Further reading about the experiment and original dataset can be found here
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Transformation in R
===================================================
run_analysis.R

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
- Produced a summary view of each subject and activity with averages of the selected features
