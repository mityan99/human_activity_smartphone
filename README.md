CourseEra - Getting and Cleaning Data Course
=============================================================================================
Human Activity Recognition Using Smartphones Dataset
=============================================================================================

The purpose of this repo is to provide a summarized view of the Human Activity Using Smartphones dataset.

The summarized view is consisted of the average measurement by subject and activity.

The following rules were applied during data preparation and cleaning:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names
- From the data set above, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The repo includes the following
=============================================================================================
- 'README.txt'
- 'CodeBook.md': documentation of the variables, data, and step-by-step transformations performed on the data
- 'run_analysis.R': R script used to perform the analysis
- 'runXY.mean.std.group.txt': output file which contains the summarized view of the average measurements by subject and activity

Data Set Information:
=============================================================================================
For each record in the dataset it is provided: 
- An identifier of the subject who carried out the experiment.
- Its activity label. 
- Mean and Standard Deviation of each measurement:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 

Original Data Set Information
=============================================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The original dataset represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source of the original dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
