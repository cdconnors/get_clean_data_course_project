library(dplyr)
library(tidyr)


#Get data

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, "UCI_Dataset.zip")
unzip("UCI_Dataset.zip")

#Get the variable names and labels for the activities conducted
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#Read in the three Train data set files
train_dat <- read.table("UCI HAR Dataset/train/X_train.txt")
train_activity_lab <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subj <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Put the subject and activity label codes in the train data set
master_train <- cbind(train_subj, train_activity_lab, train_dat)
names(master_train)[1:2] <- c("subject", "activity")

#Read in the three Test data set files
test_dat <- read.table("UCI HAR Dataset/test/X_test.txt")
test_activity_lab <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subj <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Put the subject and activity lable codes in the test data set
master_test <- cbind(test_subj, test_activity_lab, test_dat)
names(master_test)[1:2] <- c("subject", "activity")

#Merge the test and train data sets
main_dat <- rbind(master_test, master_train)
names(main_dat)[3:563] <- as.character(features[,2]) #include the actual name of each variable

#Extract just the mean and standard deviation for each measurement
mean_indices <- grep("-mean[(]", names(main_dat))
std_indices <- grep("-std[(]", names(main_dat))

indices <- sort(c(mean_indices, std_indices))

tidy_data <- main_dat[, c(1:2, indices)]

#Input the descriptive activity names into the activity column
tidy_data[,2] <- sapply(tidy_data[,2], function(x) {x <- activities[x, 2]})


#Create second tidy data set from the first with the average of each variable for each activity
# and each subject

tidy_avg <- tidy_data %>% group_by(subject, activity) %>% 
            summarise_at(names(tidy_data[,3:68]), mean)

names(tidy_avg)[3:68] <- paste(names(tidy_avg)[3:68], "Avg_by_Subj_activity")

#Save each of the tidy data sets to a csv file
write.csv(tidy_data, "tidy_data.csv")
write.csv(tidy_avg, "tidy_averages.csv")


