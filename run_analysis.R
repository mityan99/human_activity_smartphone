#run_analysis.R

library(plyr)

#staging the data
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("./data"))
{
  dir.create("./data")
}

download.file(url,destfile="./data/run.zip")
unzip(zipfile="./data/run.zip",exdir="./data")

trainX = read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainY = read.table("./data/UCI HAR Dataset/train/y_train.txt")
testX = read.table("./data/UCI HAR Dataset/test/X_test.txt")
testY = read.table("./data/UCI HAR Dataset/test/y_test.txt")
yLabels = read.table("./data/UCI HAR Dataset/activity_labels.txt")
xLabels =  read.table("./data/UCI HAR Dataset/features.txt")
trainSubject = read.table("./data/UCI HAR Dataset/train/subject_train.txt")
testSubject = read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#Merges the training and the test sets to create one data set
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.

runX = rbind(trainX,testX)
runY = rbind(trainY,testY)
runSubject = rbind(trainSubject,testSubject)

names(runSubject) = "subjectCode"

runY_label = merge(runY, yLabels, by="V1")
names(runY_label) = c("activityCode", "activityName")

#View(runY_label)
#table(runY_label)

#View(runX)
#dim(runX)
#dim(xLabels)
runX_label = runX
names(runX_label) = xLabels$V2
View(runX_label)

runXY = cbind(runSubject,runY_label,runX_label)
View(runXY)
#table(runXY$subjectCode, runXY$activityName)

#Extracts only the measurements on the mean and standard deviation for each measurement.
subset = grep("mean[()]|std|activity|subject",names(runXY),ignore.case=TRUE)
runXY.mean.std = runXY[,subset]
names(runXY.mean.std)

unique(runXY.mean.std["subjectCode"==1,"activityName"])
table(runXY.mean.std$subjectCode, runXY.mean.std$activityName)

#create an independent tidy data set with the average of each variable for each activity and each subject
runXY.mean.std.group = group_by(runXY.mean.std, subjectCode, activityName) %>%
  summarise_each(funs(mean(., na.rm=TRUE)), -c(subjectCode, activityCode, activityName))

write.csv(runXY.mean.std.group, file="runXY.mean.std.group.csv",row.names = FALSE)
