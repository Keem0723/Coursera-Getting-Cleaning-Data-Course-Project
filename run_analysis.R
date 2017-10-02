# Getting and Cleaning Data Course Project 
## Project Description
#######################
### The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare 
### tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the 
### project. 
###
### One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies 
### like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from 
### the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is 
### available at the site where the data was obtained:
###         
###         http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
### 
### Here are the data for the project:
###         
###         https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
###
### You should create one R script called run_analysis.R that does the following.
### 
### 1. Merges the training and the test sets to create one data set.
### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
### 3. Uses descriptive activity names to name the activities in the data set
### 4. Appropriately labels the data set with descriptive variable names.
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and 
### each subject.

### Assignment Requirements: 
############################
### 1) A tidy data set as described 
### 2) A link to a Github repository with your script for performing the analysis (i.e. run_analysis.R)
### 3) A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data 
### called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts 
### work and how they are connected.

## Review Criteria
###################
### 1. The submitted data set is tidy.
### 2. The Github repo contains the required scripts.
### 3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables 
### and summaries calculated, along with units, and any other relevant information.
### 4. The README that explains the analysis files is clear and understandable.
### 5. The work submitted for this project is the work of the student who submitted it.
#########################################################################################################################################

# Clearing varibles before program execution.
#################################################################################################################
rm(list = ls())


# Loading necessary packages.
#################################################################################################################
library(plyr)


# User-defined Variables that define desired working directory and date of download.
#################################################################################################################
cwdir <- "C:/Users/mkee1/Documents/Coursera-JH-Data-Science/03_Getting&CleaningData/Week 5 - Peer-Reviewed Course Project/"
filename <- "Raw Data"
dateDownloaded <- date()


# User-defined variables to assist with downloading the data files for analysis.
#################################################################################################################
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destDL <- "./Samsung_Galaxy_S_AccelData.zip"


# Setting working directory using user-defined function "setdesiredwd".
#################################################################################################################
source("setdesiredwd.R")
setdesiredwd(cwdir)


# Checking to see if file exist desired working directory. If not, then one is created. 
#################################################################################################################
if (!file.exists(filename)) {dir.create(filename)}
list.files()


# Downloading files of interest & extracting data from the zip file under desired working directory.
#################################################################################################################
if (!file.exists("Samsung_Galaxy_S_AccelData.zip")) 
        {
                download.file(fileURL, destfile = destDL)
                print(dateDownloaded)
                unzip("Samsung_Galaxy_S_AccelData.zip", exdir = "./Raw Data")
        }
list.files("Raw Data")


# 1. Reading data into R & viewing it using the View() function.
#################################################################################################################
## Features (Column Names)
featuresdt <- read.table("./Raw Data/UCI HAR Dataset/features.txt", col.names = c("id", "headers"))
str(featuresdt)

## Activity Labels
activitylabdt <- read.table("./Raw Data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityid", "activitylabel"))
str(activitylabdt)

## Test Dataset
Xtestdt <- read.table("./Raw Data/UCI HAR Dataset/test/X_test.txt", sep = "", check.names = FALSE, col.names = tolower(featuresdt$headers))
str(Xtestdt)

ytestdt <- read.table("./Raw Data/UCI HAR Dataset/test/y_test.txt", col.names = "activityid")
str(ytestdt)

subjecttestdt <- read.table("./Raw Data/UCI HAR Dataset/test/subject_test.txt", col.names = "participantid")
str(subjecttestdt)

## Training Dataset
Xtraindt <- read.table("./Raw Data/UCI HAR Dataset/train/X_train.txt", sep = "", check.names = FALSE, col.names = tolower(featuresdt$headers))
str(Xtraindt)

ytraindt <- read.table("./Raw Data/UCI HAR Dataset/train/y_train.txt", col.names = "activityid")
str(ytraindt)

subjecttraindt <- read.table("./Raw Data/UCI HAR Dataset/train/subject_train.txt", sep = "", col.names = "participantid")
str(subjecttraindt)


# 2. Merging the training and the test sets to create one data set & also doing table clean-up.
#################################################################################################################
dt1 <- rbind(Xtraindt,Xtestdt)
dt2 <- rbind(ytraindt, ytestdt)
dt3 <- rbind(subjecttraindt, subjecttestdt)

## Table clean up
rm(Xtraindt, Xtestdt)
rm(ytraindt, ytestdt)
rm(subjecttraindt, subjecttestdt)


# 3. Putting all of the data required into one dataset & also doing table clean-up.
#################################################################################################################
dt4 <- cbind(dt3, dt2, dt1)

## Table clean up
rm(dt3, dt2, dt1, featuresdt)


# 4. Extracting only the measurements on the mean and standard deviation for each measurement.
#################################################################################################################
headers <- names(dt4)
patterns <- c("mean\\(\\)", "std\\(\\)", "participantid", "activityid", "activitylabel")
meanstdloc <- grep(paste(patterns, collapse = "|"), headers)
meanstdloc_valchk <- grep(paste(patterns, collapse = "|"), headers, value = TRUE)
dt5 <- dt4[,meanstdloc]
dt5 <- dt5[order(dt5$activityid,dt5$participantid),]


# 5. Using descriptive activity names to name the activities in the data set & also doing table clean-up.
#################################################################################################################
dt5$participantid <- as.factor(dt5$participantid)
dt5$activityid <- as.factor(dt5$activityid)
dt5$activitylabel <- revalue(dt5$activityid, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS", "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING", "5" = "STANDING", "6" = "LAYING"))
dt5 <- dt5[,c(1, 2, 69, 3:68)]

## Table clean up
rm(activitylabdt, dt4)


# 6. Appropriately ,labeling the data set with descriptive variable names. The hyphens did not get omitted to help with
# the readability of the longer, yet descriptive header titles.
#################################################################################################################
headers_stripparenth <- sub("\\(\\)","", names(dt5))
headers_stripdash <- sub("\\-",".", headers_stripparenth)
headers_t2time <- sub("^t","timesignal", headers_stripdash)
headers_f2frequency <- sub("^f","frequencysignal", headers_t2time)
headers_acc2acceleration <- sub("acc","acceleration", headers_f2frequency)
headers_mag2magnitude <- sub("mag","magnitude", headers_acc2acceleration)
headers_std2standarddeviation <- sub("std","standarddeviation", headers_mag2magnitude)
headers_bodybody2body <- sub("bodybody", "body", headers_std2standarddeviation)
names(dt5) <- headers_bodybody2body

#Viewing & saving the tidy dataset #1 
View(dt5)
str(dt5)
head(dt5)
tail(dt5)

write.csv(dt5, "./My_Tidy_Dataset#1.txt", quote = FALSE, row.names = FALSE)

#Variable clean-up
rm(headers_stripparenth, headers_stripdash, headers_t2time, headers_f2frequency, headers_acc2acceleration, headers_mag2magnitude, headers_std2standarddeviation, headers_bodybody2body)


# 7. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each 
# activity and each subject.
#################################################################################################################
dt6 <- aggregate(dt5[,4:69], list(groupbyactivitylabel = dt5$activitylabel, groupbyparticipantid = dt5$participantid), FUN =mean)
View(dt6)
str(dt6)
head(dt6)
tail(dt6)

#Viewing & saving the tidy dataset #2
write.csv(dt6, "./My_Tidy_Dataset#2.txt", quote = FALSE, row.names = FALSE)