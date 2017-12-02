# get_clean_data_course_project

==================================================================
Course project for the Coursera Getting and Cleaning data course.  Project is to get data from the UCI Human Activity Recognition Using Smartphones Dataset and transform it to a tidy data set.

==================================================================


This repository includes one R script that uses the "Human Activity Recognition Using Smartphones Dataset Version 1.0" created by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

More about the data sets can be seen in the download README.txt file included with the dataset.
==================================================================

The R Script "run_analysis.R" does the following:

1. Downloads and unzips the dataset from the UCI website at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Reads in the data from the various text files.

3. Merges the test and train data sets.

4. Names the variables in the data set according to the features.txt labels included with the UCI files.

5. Subsets the data to just mean and standard deviation data for each measurement variable.

6. Creates a second data set that includes only the averages of each variable by subject and activity.

7. Writes the new data sets out to two comma delimited files.

Both produced data sets ("tidy_data.csv", "tidy_averages.csv") are included in this repository as well as the original data sets.

Explanations of the variables in the data sets are included in the file "CodeBook.txt"

==================================================================