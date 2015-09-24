<!-- R Commander Markdown Template -->

Data Codebook and Informations
=======================

#### data.analysis@numericable.fr

#### 2015-09-24

#### Dataset : FinalDataSet.csv // 180 records // 81 variables // size : 267 kB


------------------------------------------------------------------------------------------
Experimental Study Design
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
The collected data come from an experiment conducted with a group of 30 volunteers within 
an age bracket of 19-48 years. Each person performed six activities :
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and 
gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity 
at a constant rate of 50Hz. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has gravitational and body 
motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency 
components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, 
a vector of features was obtained by calculating variables from the time 
and frequency domain.

The experiments have been video-recorded to label the data manually. 

**Any other details on data collection and units can be found here :**

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

------------------------------------------------------------------------------------------
Summary Choices
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
**The FinalDataSet.csv comes from the original dataset separated in these files :**

* features.txt ; subject_test.txt; subject_train.txt
* X_test.txt ; y_test.txt
* X_train.txt ; y_train.txt
* activity_labels.txt

**Following operations were performed on the original file :**

 1. )Merges the training and the test sets to create one data set.
 2. )Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. )Uses descriptive activity names to name the activities in the data set
 4. )Appropriately labels the data set with descriptive variable names. 
 5. )From the data set in step 4, creates a second, independent tidy data set with the 
     average of each variable for each activity and each subject.The average is calculated 
     BY COLUMN for each participant and activity he performed.

**Original Data download link :**

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

------------------------------------------------------------------------------------------
Code Book
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
The FinalDataSet.csv dataset contains 81 Variables as follows :


**Variable :"1" Activity**

Is coded from 1 to 6 following this description :

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

**Variable :"2" Subject**

Is coded from 1 to 30 , with one record par activity and participant, accordingly to the 
number of participants.

**Other Variables from "3" to "81" :**

Every other relevant information can be found in following data folder files :
"features_info.txt" and "features.txt" .

Accordingly to the transformation requirements, only these variables are selected from 
original data and contain means and standard variations for performed signal measures(Hz):

* "3","tBodyAcc-mean()-X" 
* "4","tBodyAcc-mean()-Y"
* "5","tBodyAcc-mean()-Z"
* "6","tGravityAcc-mean()-X"
* "7","tGravityAcc-mean()-Y"
* "8","tGravityAcc-mean()-Z"
* "9","tBodyAccJerk-mean()-X"
* "10","tBodyAccJerk-mean()-Y"
* "11","tBodyAccJerk-mean()-Z"
* "12","tBodyGyro-mean()-X"
* "13","tBodyGyro-mean()-Y"
* "14","tBodyGyro-mean()-Z"
* "15","tBodyGyroJerk-mean()-X"
* "16","tBodyGyroJerk-mean()-Y"
* "17","tBodyGyroJerk-mean()-Z"
* "18","tBodyAccMag-mean()"
* "19","tGravityAccMag-mean()"
* "20","tBodyAccJerkMag-mean()"
* "21","tBodyGyroMag-mean()"
* "22","tBodyGyroJerkMag-mean()"
* "23","fBodyAcc-mean()-X"
* "24","fBodyAcc-mean()-Y"
* "25","fBodyAcc-mean()-Z"
* "26","fBodyAcc-meanFreq()-X"
* "27","fBodyAcc-meanFreq()-Y"
* "28","fBodyAcc-meanFreq()-Z"
* "29","fBodyAccJerk-mean()-X"
* "30","fBodyAccJerk-mean()-Y"
* "31","fBodyAccJerk-mean()-Z"
* "32","fBodyAccJerk-meanFreq()-X"
* "33","fBodyAccJerk-meanFreq()-Y"
* "34","fBodyAccJerk-meanFreq()-Z"
* "35","fBodyGyro-mean()-X"
* "36","fBodyGyro-mean()-Y"
* "37","fBodyGyro-mean()-Z"
* "38","fBodyGyro-meanFreq()-X"
* "39","fBodyGyro-meanFreq()-Y"
* "40","fBodyGyro-meanFreq()-Z"
* "41","fBodyAccMag-mean()"
* "42","fBodyAccMag-meanFreq()"
* "43","fBodyBodyAccJerkMag-mean()"
* "44","fBodyBodyAccJerkMag-meanFreq()"
* "45","fBodyBodyGyroMag-mean()"
* "46","fBodyBodyGyroMag-meanFreq()"
* "47","fBodyBodyGyroJerkMag-mean()"
* "48","fBodyBodyGyroJerkMag-meanFreq()"
* "49","tBodyAcc-std()-X"
* "50","tBodyAcc-std()-Y"
* "51","tBodyAcc-std()-Z"
* "52","tGravityAcc-std()-X"
* "53","tGravityAcc-std()-Y"
* "54","tGravityAcc-std()-Z"
* "55","tBodyAccJerk-std()-X"
* "56","tBodyAccJerk-std()-Y"
* "57","tBodyAccJerk-std()-Z"
* "58","tBodyGyro-std()-X"
* "59","tBodyGyro-std()-Y"
* "60","tBodyGyro-std()-Z"
* "61","tBodyGyroJerk-std()-X"
* "62","tBodyGyroJerk-std()-Y"
* "63","tBodyGyroJerk-std()-Z"
* "64","tBodyAccMag-std()"
* "65","tGravityAccMag-std()"
* "66","tBodyAccJerkMag-std()"
* "67","tBodyGyroMag-std()"
* "68","tBodyGyroJerkMag-std()"
* "69","fBodyAcc-std()-X"
* "70","fBodyAcc-std()-Y"
* "71","fBodyAcc-std()-Z"
* "72","fBodyAccJerk-std()-X"
* "73","fBodyAccJerk-std()-Y"
* "74","fBodyAccJerk-std()-Z"
* "75","fBodyGyro-std()-X"
* "76","fBodyGyro-std()-Y"
* "77","fBodyGyro-std()-Z"
* "78","fBodyAccMag-std()"
* "79","fBodyBodyAccJerkMag-std()"
* "80","fBodyBodyGyroMag-std()"
* "81","fBodyBodyGyroJerkMag-std()"

------------------------------------------------------------------------------------------
Data Source References :
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws 











