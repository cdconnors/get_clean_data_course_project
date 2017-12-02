==================================================================
Tidy data sets variables in the "tidy_data.csv" and "tidy_averages.csv" files:

In the original UCI data set, each measured feature is a set of observations.  
Each variable is an estimate of different summarizing values for that set of observations.

For the final data set, I selected only those variables that were either a mean of the set of observations for each feature or the standard deviation 
of the set of observations for each feature.

This reduced set are the variables in the final tidy data sets. There are a total of 68 variables (out of the original 561 vars).


tBodyAcc-mean()-X,Y,Z (total of three variables)
tGravityAcc-mean()-X,Y,Z
tBodyAccJerk-mean()-X,Y,Z
tBodyGyro-mean()-X,Y,Z
tBodyGyroJerk-mean()-X,Y,Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X,Y,Z
fBodyAccJerk-mean()-X,Y,Z
fBodyGyro-mean()-X,Y,Z
fBodyAccMag-mean()
fBodyAccJerkMag-mean()
fBodyGyroMag-mean()
fBodyGyroJerkMag-mean()

tBodyAcc-std()-X,Y,Z 
tGravityAcc-std()-X,Y,Z
tBodyAccJerk-std()-X,Y,Z
tBodyGyro-std()-X,Y,Z
tBodyGyroJerk-std()-X,Y,Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X,Y,Z
fBodyAccJerk-std()-X,Y,Z
fBodyGyro-std()-X,Y,Z
fBodyAccMag-std()
fBodyAccJerkMag-std()
fBodyGyroMag-std()
fBodyGyroJerkMag-std()
==================================================================

The new data set includes the variable names at the top of each column.

Additionally, the new data set includes subject and activity type to identify each row of observations.  Activity type has been labeled to include the human
readable name of the activity.

==================================================================

The tidy_averages data set is a set of data based on the tidy_data data set.  The tidy_averages data was constructed by grouping the observations from the
tidy_data by subject and activity and finding the mean of each variable within each group.

Variable names have been appended with "Avg_by_Subj_activity".

==================================================================

BELOW ARE THE DESCRIPTIONS OF THE ORIGINAL OBSERVATIONS AND WHAT EACH NUMBER REPRESENTS IN THE DATA SET BEFORE TRANSFORMATIONS ABOVE:

==================================================================

Feature Selection - Below is a description of each of the variables that come with the UCI data set. This is the description that comes with the data set.
==================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ 
tGravityAcc-XYZ 
tBodyAccJerk-XYZ
tBodyGyro-XYZ 
tBodyGyroJerk-XYZ
tBodyAccMag 
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


The complete list of variables of each feature vector is available in 'features.txt'
==================================================================