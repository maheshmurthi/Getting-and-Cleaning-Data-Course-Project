## Getting and Cleaning Data - Course Project

## Set Default Directory
setwd("G:/Analytics and Data Scientist/Coursera/3-Getting and Cleaning Data/Week 3/Course Project")

## Merge the training and the test sets to create one data set

## Test Set = all files x,y and subject
X_Test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_Test <- read.table("UCI HAR Dataset/test/y_test.txt")
Subject_Test <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Train Set = all files x,y and subject
X_Train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_Train <- read.table("UCI HAR Dataset/train/y_train.txt")
Subject_Train <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Bind Rows (If new cols, will automatically appear)
## New merged data set is thus created - all small case for easy typing purposes - R is case sensitive
x_dataset <- rbind(X_Train, X_Test)
y_dataset <- rbind(Y_Train, Y_Test)
s_dataset <- rbind(Subject_Train, Subject_Test)

## Read Other Data 
the_features <- read.table("UCI HAR Dataset/features.txt")
the_activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Id", "Activity"))


## Question2 : Extracts only the measurements on the mean and standard deviation for each measurement

## Which Columns in features.txt meet the criteria ?
meanstd_cols <- grep("-mean\\(\\)|-std\\(\\)", the_features[, 2])

## Select those Columns from X-dataset. From the feature frame, select feature name these columns
desired_set <- x_dataset[,meanstd_cols]
names(desired_set) <- the_features[meanstd_cols,2]


## Question3 : Use descriptive activity names to name the activities in the data set
activityframe <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ID", "Activity"))
names(y_dataset) <- "Activity"
names(s_dataset) <- "Subject"

## Question4 : Appropriately labels the data set with descriptive variable names.

completedata <- cbind(desired_set, y_dataset, s_dataset)

## Question5 : From the data set in step 4, creates a second, independent tidy data set with the average of each
## variable for each activity and each subject.

## load plyr for using the numcolwise function
library(plyr)
tidyset = ddply(completedata, c("Activity","Subject"), numcolwise(mean))
write.table(tidyset, file = "tidydataset.txt", row.name = FALSE)



