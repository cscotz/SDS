library(reshape2)

#Import Shared Data
activity_labels <- read.table('.\\UCI\ HAR\ Dataset\\activity_labels.txt')
features <- read.table('.\\UCI\ HAR\ Dataset\\features.txt')

#Import Test Data
subject_test_raw <- read.table('.\\UCI\ HAR\ Dataset\\test\\subject_test.txt')
x_test_raw <- read.table('.\\UCI\ HAR\ Dataset\\test\\X_test.txt')
y_test_raw <- read.table('.\\UCI\ HAR\ Dataset\\test\\y_test.txt')

#Import Train Data
subject_train_raw <- read.table('.\\UCI\ HAR\ Dataset\\train\\subject_train.txt')
x_train_raw <- read.table('.\\UCI\ HAR\ Dataset\\train\\X_train.txt')
y_train_raw <- read.table('.\\UCI\ HAR\ Dataset\\train\\y_train.txt')


#Merge datasets
x_raw <- rbind(x_test_raw, x_train_raw)
y_raw <- rbind(y_test_raw, y_train_raw)
subject_raw <- rbind(subject_test_raw,subject_train_raw)

#Set column names of x_raw data from the features data frame
colnames(x_raw) <- features[,2]

#Tidy up feature names by removing () and replace - with .
colnames(x_raw) <- gsub("\\(\\)","",colnames(x_raw))
colnames(x_raw) <- gsub("-",".",colnames(x_raw))

#Append activity names onto the y_raw data, looking up values in activity_data
y_raw$V2 <- factor(y_raw$V1,
                   levels=activity_labels$V1,
                   labels=activity_labels$V2)

#Extract column ids that contain mean() or std()
features_subset <- grep("std\\(\\)|mean\\(\\)",features[,2])

#Extract only mean() and std() measurements from x_test and x_train
x <- x_raw[,features_subset]

#Combine x, y_raw, and subject_raw data frames
data_raw <- cbind(subject_raw[,1],y_raw,x)

#Set subject and activity column names
colnames(data_raw)[c(1,2,3)] <- c("Subject","Activity_ID", "Activity")

#Melt data_raw into a tall skinny data set
data_melt <- melt(data_raw,id=c("Subject","Activity_ID","Activity"))

#Recast data to calculate means of each feature, segregated by subject and activity
data_tidy<-dcast(data_melt, Subject + Activity + Activity_ID ~ variable, fun.aggregate=mean)
