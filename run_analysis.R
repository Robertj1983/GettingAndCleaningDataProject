## TODO:Comments describing what it does
## Data full description http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis <- function() {
    sourceUri <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    destinationName <- "./getdata_projectfiles_UCI HAR Dataset.zip"
    
    ## Download the file if it does not exist
    if (!file.exists(destinationName)) {
        download.file(sourceUri, destinationName)
    }
    
    unzip(destinationName)
    print("Archive extracted")
    
    setwd("./UCI HAR Dataset/")
    
    ## Get all of the global data (activity labels, features, etc)
    activityLabels <- read.csv("activity_labels.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE)
    colnames(activityLabels) <- c("Value", "Description")
    
    features <- read.csv("features.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE)
    colnames(features) <- c("ColumnNumber", "Name")
    
    ## Get the training set
    trainSubjects <- read.csv("./train/subject_train.txt", header = FALSE)
    colnames(trainSubjects) <- c("SubjectId")
    
    trainFeatureValues <- read.csv("./train/X_train.txt", header = FALSE, sep = "")
    ## We can't set the column names right now since there are duplicate names, which
    ## dplyr doesn't like
    #colnames(trainFeatureValues) <- features[,2]
    
    trainActivityValues <- read.csv("./train/y_train.txt", header = FALSE)
    colnames(trainActivityValues) <- c("ActivityValue")
    
    trainData <- cbind(trainSubjects, trainActivityValues, trainFeatureValues)
    
    ## Get the test set
    testSubjects <- read.csv("./test/subject_test.txt", header = FALSE)
    colnames(testSubjects) <- c("SubjectId")
    
    testFeatureValues <- read.csv("./test/X_test.txt", header = FALSE, sep = "")
    ## We can't set the column names right now since there are duplicate names, which
    ## dplyr doesn't like
    #colnames(testFeatureValues) <- features[,2]
    
    testActivityValues <- read.csv("./test/y_test.txt", header = FALSE)
    colnames(testActivityValues) <- c("ActivityValue")
    
    testData <- cbind(testSubjects, testActivityValues, testFeatureValues)
    
    ## Merge them (rbind)
    allData <- rbind(trainData, testData)
    
    ## Find the feature names that contain mean() or std()
    interestingFeatures <- grep("mean\\(\\)|std\\(\\)", features[,2])
    
    ## Create the clean data set with only the mean and std variables we want
    subsetData <- select(allData, c(1,2, interestingFeatures + 2))
    
    ## Label the feature variables correctly
    colnames(subsetData)[3:length(colnames(subsetData))] <- features[interestingFeatures, 2]

    ## Change the activity values into descriptive names
    subsetData$ActivityValue <- factor(subsetData$ActivityValue, labels = activityLabels[,2])
    ## Rename the ActivityValue to ActivityDescription
    subsetData <- rename(subsetData, ActivityDescription = ActivityValue)
    
    ## Summarise the data by subject and activity, with the mean of each variable
    cleanData <- group_by(subsetData, SubjectId, ActivityDescription)
    cleanData <- summarise_each(cleanData, funs(mean))
    
    ## Output the clean data
    setwd("./..")
    write.table(cleanData, "result.txt", row.names = FALSE)
    
    cleanData
}