README.md
===

##Repository Files

There are five files in this repository:
- UCI_HAR_TIDY.csv: tidy dataset in CSV format
- UCI_HAR_TIDY.txt: tidy dataset in space delimited TXT format
- run_analysis.R: the R script used to get and clean the original UCI HAR dataset
- CodeBook.md: markdown file describing the variables in the tidy dataset
- README.md: this file, describing the repository files and the logic of run_analysis.R

##Description of run_analysis.R
The original dataset contained data split into many different files.  Training data was split from testing data, activity labels were in a separate file, and subject IDs were in a separate file.

###Instructions for Downloading and Storing Original Data
Before the analysis file cam be run, the original data should be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, unzipped, and the folder should be placed in the same location as run_analysis.R.

###File Descriptions
The files used for this analysis are:
1. activity_labels.txt: 
2. features.txt: Shows information about the variables used on the feature vector.
3. subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
4. X_test.txt: Test set.
5. y_test.txt: Test activity labels.
6. subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
7. X_train.txt: Training set.
8. y_train.txt: Training activity labels. 

###run_analysis.R Description
The logic behind the code in run_analysis.R is as follows:
1. The reshape2 library is used to help with tidying the data (line 1).
2. The original data is read in from the folders (lines 3-15).
  - The raw data is read in as subject_test_raw, x_test_raw, y_test_raw, subject_train_raw, x_train_raw, and y_train_raw.
3. The test and training data is merged together (lines 18-21).
  - The raw data is merged into x_raw, y_raw, and subject_raw. 
4. The column names are read from variable names in the features dataset and added to the x_raw dataset (lines 23-24).
5. The variable names in x_raw are cleaned up to remove parenthesis and to replace dashes with dots for easier reading (lines 26-28).
6. An addtional column is added to the y_raw dataset to add activity labels next to each activity ID (lines 30-33).
7. Features dataset is filtered to produces a list of indeces where the feature name contains mean() or std() (lines 35-36).
8. Extract columns from x_raw based on set of feature IDs to produce x dataset (lines 38-39).
9. Merge subject, y_raw, and x datasets into new data_raw dataset (lines 41-42).
10. Add column names for subject, activity, and activity ID (lines 44-45).
11. Melt data_raw into a tall skinny dataset to produce data_melt (lines 47-48).
12. Recast data to calculate means of each feature, segregated by subject and activity (lines 50-51).
13. Write tidy dataset to txt and csv files (lines 53-57).