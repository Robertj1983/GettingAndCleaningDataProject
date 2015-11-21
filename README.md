# GettingAndCleaningDataProject

## Overview

The repo contains:

- README.txt: This file.
- run_analysis.R: The code file to transform the original data to the clean data.
- result.txt: The clean data set output to a text file.
- CodeBook.txt: The code book for the clean data set.

## Code description

The code is commented with more detailed descriptions. It performs the following steps:

1. If the zip source file does not exist in the working directory, it is downloaded.
2. The archive is extracted
3. The activity labels and features are read in and assigned appropriate column names.
4. The training set (subjects, feature values and activity values) is loaded. The subjects and activity values are assigned appropriate column names.
5. The test set (subjects, feature values and activity values) is loaded. The subjects and activity values are assigned appropriate column names.
6. The training and test sets are merged.
7. The feature names of interest (any relating to mean or standard deviations) are extracted.
8. The data relating to these features is extracted into a new data set.
9. The activity values are changed to descriptive names and the column name is adjusted appropriately.
10. A new data set is created from this, grouped by the subject and activity, and summarised by the mean of each feature variable.
11. This data set is output to result.txt in the working directory.
12. The function outputs the clean data set as a data frame.
