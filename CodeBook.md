CodeBook.md
===

The orginal data for this project represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data set can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

To simplify the dataset, the orignal dataset was filtered to only variables denoting mean and standard deviations.

In the variables,
- Subject identifies the subject who performed the activity.
- Activity links the class labels with their activity name.
- Activity_ID is the activity ID number
- prefix "t" refers to the time domain and prefix "f" refers to the frequency domain
- "acc" refers to accelerometer data and "gyro" refers to gyroscope data
- "X", "Y", and "Z" refer to the three axial signals
- "mean" are mean values, "std" are standard deviations

The variable names were then cleaned up to remove parenthesis and to replace dashes with dots.

The tidy dataset ("UCI_HAR_TIDY.csv" or "UCI_HAR_TIDY.txt") contains 66 variables and three identifiers.  Each variable measurement represents the average value of all measurements for that particular user and activity.


|    | Variable Name             |
|----|---------------------------|
| 1  | Subject                   |
| 2  | Activity                  |
| 3  | Activity_ID               |
| 4  | tBodyAcc.mean.X           |
| 5  | tBodyAcc.mean.Y           |
| 6  | tBodyAcc.mean.Z           |
| 7  | tBodyAcc.std.X            |
| 8  | tBodyAcc.std.Y            |
| 9  | tBodyAcc.std.Z            |
| 10 | tGravityAcc.mean.X        |
| 11 | tGravityAcc.mean.Y        |
| 12 | tGravityAcc.mean.Z        |
| 13 | tGravityAcc.std.X         |
| 14 | tGravityAcc.std.Y         |
| 15 | tGravityAcc.std.Z         |
| 16 | tBodyAccJerk.mean.X       |
| 17 | tBodyAccJerk.mean.Y       |
| 18 | tBodyAccJerk.mean.Z       |
| 19 | tBodyAccJerk.std.X        |
| 20 | tBodyAccJerk.std.Y        |
| 21 | tBodyAccJerk.std.Z        |
| 22 | tBodyGyro.mean.X          |
| 23 | tBodyGyro.mean.Y          |
| 24 | tBodyGyro.mean.Z          |
| 25 | tBodyGyro.std.X           |
| 26 | tBodyGyro.std.Y           |
| 27 | tBodyGyro.std.Z           |
| 28 | tBodyGyroJerk.mean.X      |
| 29 | tBodyGyroJerk.mean.Y      |
| 30 | tBodyGyroJerk.mean.Z      |
| 31 | tBodyGyroJerk.std.X       |
| 32 | tBodyGyroJerk.std.Y       |
| 33 | tBodyGyroJerk.std.Z       |
| 34 | tBodyAccMag.mean          |
| 35 | tBodyAccMag.std           |
| 36 | tGravityAccMag.mean       |
| 37 | tGravityAccMag.std        |
| 38 | tBodyAccJerkMag.mean      |
| 39 | tBodyAccJerkMag.std       |
| 40 | tBodyGyroMag.mean         |
| 41 | tBodyGyroMag.std          |
| 42 | tBodyGyroJerkMag.mean     |
| 43 | tBodyGyroJerkMag.std      |
| 44 | fBodyAcc.mean.X           |
| 45 | fBodyAcc.mean.Y           |
| 46 | fBodyAcc.mean.Z           |
| 47 | fBodyAcc.std.X            |
| 48 | fBodyAcc.std.Y            |
| 49 | fBodyAcc.std.Z            |
| 50 | fBodyAccJerk.mean.X       |
| 51 | fBodyAccJerk.mean.Y       |
| 52 | fBodyAccJerk.mean.Z       |
| 53 | fBodyAccJerk.std.X        |
| 54 | fBodyAccJerk.std.Y        |
| 55 | fBodyAccJerk.std.Z        |
| 56 | fBodyGyro.mean.X          |
| 57 | fBodyGyro.mean.Y          |
| 58 | fBodyGyro.mean.Z          |
| 59 | fBodyGyro.std.X           |
| 60 | fBodyGyro.std.Y           |
| 61 | fBodyGyro.std.Z           |
| 62 | fBodyAccMag.mean          |
| 63 | fBodyAccMag.std           |
| 64 | fBodyBodyAccJerkMag.mean  |
| 65 | fBodyBodyAccJerkMag.std   |
| 66 | fBodyBodyGyroMag.mean     |
| 67 | fBodyBodyGyroMag.std      |
| 68 | fBodyBodyGyroJerkMag.mean |
| 69 | fBodyBodyGyroJerkMag.std  |