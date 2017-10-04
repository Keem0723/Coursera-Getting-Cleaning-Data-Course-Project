## **Project Description**
**==================================================================**


The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: [Samsung Description                                         Data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 
Here are the data for the project: [Data Download                                                         Link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

You should create one R script called run_analysis.R that does the following:


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#### **Assignment Requirements**
1. A tidy data set as described 
2. A link to a Github repository with your script for performing the analysis (i.e. run_analysis.R)
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

#### **Review Criteria**
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

## **Data Description (i.e. README.txt File)**
**==================================================================**

#### **Information Source Citation:**
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


#### **Human Activity Recognition Using Smartphones Dataset: Version 1.0**
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:


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


- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:


Use of this dataset in publications must be acknowledged by referencing the following publication [1] 


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

#### **Dataset Variable Description (i.e. Codebook)**


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 


- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

### **Fulfillment of Assignment Requirements**
1. A tidy data set as described
    + **Step #4:** My_Tidy_Dataset#1.txt
    + **Step #5:** My_Tidy_Dataset#2.txt
2. A [link](https://github.com/Keem0723/Coursera-Getting-Cleaning-Data-Course-Project.git) to a Github repository with your script for performing the analysis (i.e. run_analysis.R)
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.
    + **R Notebook:** Codebook.md

## **Details of Run_Analysis R Script**
**==================================================================**


Clearing varibles before program execution.
```{r}
rm(list = ls())
```

Loading necessary packages.
```{r}
library(plyr)
```

User-defined Variables that define desired working directory and date of download.
```{r}
cwdir <- "C:/Users/mkee1/Documents/Coursera-JH-Data-Science/03_Getting&CleaningData/Week 5 - Peer-Reviewed Course Project/"
filename <- "Raw Data"
dateDownloaded <- date()
```

User-defined variables to assist with downloading the data files for analysis.
```{r}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destDL <- "./Samsung_Galaxy_S_AccelData.zip"
```

Setting working directory using user-defined function "setdesiredwd", a user-defined function used to set the desired working directory.
```{r}
source("setdesiredwd.R")
setdesiredwd(cwdir)

# setdesiredwd.R Script
# #Function to set the desired working directory
# setdesiredwd <- function(workingdirpath){
#         #Getting default current working directory
#         getwd()
#         old.dir <<- getwd()
#         
#         #Setting a new working directory
#         new.dir <- workingdirpath
#         setwd(new.dir)
#         getwd()
# }
```

Checking to see if file exist desired working directory. If not, then one is created. 
```{r}
if (!file.exists(filename)) {dir.create(filename)}
list.files()
```

Downloading files of interest & extracting data from the zip file under desired working directory.
```{r}
if (!file.exists("Samsung_Galaxy_S_AccelData.zip")) 
        {
                download.file(fileURL, destfile = destDL)
                print(dateDownloaded)
                unzip("Samsung_Galaxy_S_AccelData.zip", exdir = "./Raw Data")
        }
list.files("Raw Data")
```

##### **1. Reading data into R & viewing it using the View() function.**
```{r}
# Features (Column Names)
featuresdt <- read.table("./Raw Data/UCI HAR Dataset/features.txt", col.names = c("id", "headers"))
str(featuresdt)

# Activity Labels
activitylabdt <- read.table("./Raw Data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityid", "activitylabel"))
str(activitylabdt)

# Test Dataset
Xtestdt <- read.table("./Raw Data/UCI HAR Dataset/test/X_test.txt", sep = "", check.names = FALSE, col.names = tolower(featuresdt$headers))
str(Xtestdt)

ytestdt <- read.table("./Raw Data/UCI HAR Dataset/test/y_test.txt", col.names = "activityid")
str(ytestdt)

subjecttestdt <- read.table("./Raw Data/UCI HAR Dataset/test/subject_test.txt", col.names = "participantid")
str(subjecttestdt)

# Training Dataset
Xtraindt <- read.table("./Raw Data/UCI HAR Dataset/train/X_train.txt", sep = "", check.names = FALSE, col.names = tolower(featuresdt$headers))
str(Xtraindt)

ytraindt <- read.table("./Raw Data/UCI HAR Dataset/train/y_train.txt", col.names = "activityid")
str(ytraindt)

subjecttraindt <- read.table("./Raw Data/UCI HAR Dataset/train/subject_train.txt", sep = "", col.names = "participantid")
str(subjecttraindt)
```

##### **2. Merging the training and the test sets to create one data set & also doing table clean-up.**
```{r}
dt1 <- rbind(Xtraindt,Xtestdt)
dt2 <- rbind(ytraindt, ytestdt)
dt3 <- rbind(subjecttraindt, subjecttestdt)

# Table clean up
rm(Xtraindt, Xtestdt)
rm(ytraindt, ytestdt)
rm(subjecttraindt, subjecttestdt)
```

##### **3. Putting all of the data required into one dataset & also doing table clean-up.**
```{r}
dt4 <- cbind(dt3, dt2, dt1)

## Table clean up
rm(dt3, dt2, dt1, featuresdt)
```

##### **4. Extracting only the measurements on the mean and standard deviation for each measurement.**
```{r}
headers <- names(dt4)
patterns <- c("mean\\(\\)", "std\\(\\)", "participantid", "activityid", "activitylabel")
meanstdloc <- grep(paste(patterns, collapse = "|"), headers)
meanstdloc_valchk <- grep(paste(patterns, collapse = "|"), headers, value = TRUE)
dt5 <- dt4[,meanstdloc]
dt5 <- dt5[order(dt5$activityid,dt5$participantid),]
```

##### **5. Using descriptive activity names to name the activities in the data set & also doing table clean-up.**
```{r}
dt5$participantid <- as.factor(dt5$participantid)
dt5$activityid <- as.factor(dt5$activityid)
dt5$activitylabel <- revalue(dt5$activityid, c("1" = "WALKING", "2" = "WALKING_UPSTAIRS", "3" = "WALKING_DOWNSTAIRS", "4" = "SITTING", "5" = "STANDING", "6" = "LAYING"))
dt5 <- dt5[,c(1, 2, 69, 3:68)]

## Table clean up
rm(activitylabdt, dt4)
```

##### **6. Appropriately ,labeling the data set with descriptive variable names. The hyphens did not get omitted to help with the readability of the longer, yet descriptive header titles.**
```{r}
headers_stripparenth <- sub("\\(\\)","", names(dt5))
headers_stripdash <- sub("\\-",".", headers_stripparenth)
headers_t2time <- sub("^t","timesignal", headers_stripdash)
headers_f2frequency <- sub("^f","frequencysignal", headers_t2time)
headers_acc2acceleration <- sub("acc","acceleration", headers_f2frequency)
headers_mag2magnitude <- sub("mag","magnitude", headers_acc2acceleration)
headers_std2standarddeviation <- sub("std","standarddeviation", headers_mag2magnitude)
headers_bodybody2body <- sub("bodybody", "body", headers_std2standarddeviation)
names(dt5) <- headers_bodybody2body

#Viewing the final table
View(dt5)
str(dt5)
head(dt5)
tail(dt5)

#Variable clean-up
rm(headers_stripparenth, headers_stripdash, headers_t2time, headers_f2frequency, headers_acc2acceleration, headers_mag2magnitude, headers_std2standarddeviation, headers_bodybody2body)
```

##### **7. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**
```{r}
dt6 <- aggregate(dt5[,4:69], list(groupbyactivitylabel = dt5$activitylabel, groupbyparticipantid = dt5$participantid), FUN =mean)
View(dt6)
str(dt6)
head(dt6)
tail(dt6)
```
