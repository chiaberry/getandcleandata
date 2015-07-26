## assumes the zip file is downloaded and unzipped
library("dplyr")

## creates the data frames from the txt. 
## first, test data

testdata <- read.table("test/X_test.txt")
testsubjects <- read.table("test/subject_test.txt")
testactivity <- read.table("test/Y_test.txt")

## combines the three data frames to create a cohesive data frame
testdatacomplete <- cbind(testsubjects, testactivity, testdata)

## this is repeated for the training data
traindata <-read.table("train/X_train.txt")
trainsubjects <- read.table("train/subject_train.txt")
trainactivity <-read.table("train/Y_train.txt")

traindatacomplete <-cbind(trainsubjects, trainactivity, traindata)

##then the features and activity labels are extracted from the txt files 

features <- read.table("features.txt", stringsAsFactors=FALSE)
activity_labels <-read.table("activity_labels.txt", stringsAsFactors=FALSE)

##First the features are used to label the columns
colnames(traindatacomplete) <- make.unique(c("Subjects", "Activity", features$V2)) 
colnames(testdatacomplete) <- make.unique(c("Subjects", "Activity", features$V2))

## Now both sets can be binded together
datacomplete <- rbind(testdatacomplete, traindatacomplete)

dc <- tbl_df(datacomplete)
dc2 <- select(dc, Subjects:Activity, contains("mean"), contains("std"))
## dc2 is now a data frame with only the means and stds

#correctly labels the activities, turning them from 1:6 into their labels
dc3 <- merge(x=activity_labels, y=dc2, by.x="V1", by.y="Activity", sort=FALSE)
dc3 <- select(dc3, -V1) ##removes the redundant activity label number
colnames(dc3)[1] <- "Activity"

##now the data is grouped by activity and subject in order to summarise
## by mean

tidy_mean_data <- summarise_each((group_by(dc3, Activity, Subjects)), funs(mean))

