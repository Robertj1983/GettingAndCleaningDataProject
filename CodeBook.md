#Code book

##Study design

The source data was retrieved from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip,
and a full description of the data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
The source data contains data collected from the accelerometers from the Samsung Galaxy S smartphone. See the README.txt in the
source data for an explanation of how the data was collected, and the meaning of the various source variables.

Note that the variable descriptions have been adapted from the features_info.txt file in the original archive, since
all of the feature variable names have been reused, but have a different meaning.

The clean data is a combination of the test and training source data. The average of each feature variable relating to a mean or standard deviation is extracted, grouped by subject and activity.

##Code book
Note that all variables except SubjectId and ActivityDescription are normalized and bounded within [-1,1]. The clean data contains the following variables:

- SubjectId: An integer ID for each subject. Ranges from 1 to 30.
- ActivityDescription: A textual description for the type of activity the subject was undertaking when the feature measurements were performed. Can be one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- tBodyAcc-mean()-X: The mean of the source variable tBodyAcc-mean()-X
- tBodyAcc-mean()-Y: The mean of the source variable tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z: The mean of the source variable tBodyAcc-mean()-Z
- tBodyAcc-std()-X: The mean of the source variable tBodyAcc-std()-X
- tBodyAcc-std()-Y: The mean of the source variable tBodyAcc-std()-Y
- tBodyAcc-std()-Z: The mean of the source variable tBodyAcc-std()-Z
- tGravityAcc-mean()-X: The mean of the source variable tGravityAcc-mean()-X
- tGravityAcc-mean()-Y: The mean of the source variable tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z: The mean of the source variable tGravityAcc-mean()-Z
- tGravityAcc-std()-X: The mean of the source variable tGravityAcc-std()-X
- tGravityAcc-std()-Y: The mean of the source variable tGravityAcc-std()-Y
- tGravityAcc-std()-Z: The mean of the source variable tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X: The mean of the source variable tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y: The mean of the source variable tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z: The mean of the source variable tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X: The mean of the source variable tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y: The mean of the source variable tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z: The mean of the source variable tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X: The mean of the source variable tBodyGyro-mean()-X
- tBodyGyro-mean()-Y: The mean of the source variable tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z: The mean of the source variable tBodyGyro-mean()-Z
- tBodyGyro-std()-X: The mean of the source variable tBodyGyro-std()-X
- tBodyGyro-std()-Y: The mean of the source variable tBodyGyro-std()-Y
- tBodyGyro-std()-Z: The mean of the source variable tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X: The mean of the source variable tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y: The mean of the source variable tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z: The mean of the source variable tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X: The mean of the source variable tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y: The mean of the source variable tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z: The mean of the source variable tBodyGyroJerk-std()-Z
- tBodyAccMag-mean(): The mean of the source variable tBodyAccMag-mean()
- tBodyAccMag-std(): The mean of the source variable tBodyAccMag-std()
- tGravityAccMag-mean(): The mean of the source variable tGravityAccMag-mean()
- tGravityAccMag-std()       : The mean of the source variable tGravityAccMag-std()       
- tBodyAccJerkMag-mean(): The mean of the source variable tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std(): The mean of the source variable tBodyAccJerkMag-std()
- tBodyGyroMag-mean(): The mean of the source variable tBodyGyroMag-mean()
- tBodyGyroMag-std(): The mean of the source variable tBodyGyroMag-std()
- tBodyGyroJerkMag-mean(): The mean of the source variable tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std(): The mean of the source variable tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X: The mean of the source variable fBodyAcc-mean()-X
- fBodyAcc-mean()-Y          : The mean of the source variable fBodyAcc-mean()-Y          
- fBodyAcc-mean()-Z: The mean of the source variable fBodyAcc-mean()-Z
- fBodyAcc-std()-X: The mean of the source variable fBodyAcc-std()-X
- fBodyAcc-std()-Y: The mean of the source variable fBodyAcc-std()-Y
- fBodyAcc-std()-Z: The mean of the source variable fBodyAcc-std()-Z
- fBodyAccJerk-mean()-X: The mean of the source variable fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y: The mean of the source variable fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z: The mean of the source variable fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X: The mean of the source variable fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y: The mean of the source variable fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z: The mean of the source variable fBodyAccJerk-std()-Z
- fBodyGyro-mean()-X: The mean of the source variable fBodyGyro-mean()-X
- fBodyGyro-mean()-Y: The mean of the source variable fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z: The mean of the source variable fBodyGyro-mean()-Z
- fBodyGyro-std()-X: The mean of the source variable fBodyGyro-std()-X
- fBodyGyro-std()-Y: The mean of the source variable fBodyGyro-std()-Y
- fBodyGyro-std()-Z: The mean of the source variable fBodyGyro-std()-Z
- fBodyAccMag-mean(): The mean of the source variable fBodyAccMag-mean()
- fBodyAccMag-std(): The mean of the source variable fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean(): The mean of the source variable fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std(): The mean of the source variable fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean(): The mean of the source variable fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std(): The mean of the source variable fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean(): The mean of the source variable fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std(): The mean of the source variable fBodyBodyGyroJerkMag-std()
