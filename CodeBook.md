Ernesto Bezanilla

Feature Selection 
=================

The data in the link below represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The output for this project takes that data and produces a new data set according to the following steps:

1-Merges the training and the test sets to create one data set.
2-Extracts only the measurements on the mean and standard deviation for each measurement.
3-Uses descriptive activity names to name the activities in the data set
4-Appropriately labels the data set with descriptive variable names.
5-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

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

The set of variables that were estimated from these signals for this data sets are: 

mean(): Mean value. 
std(): Standard deviation. 

Note: The resulting data set provides average of each variable for each activity and each subject

The complete list of variables is:
==================================

"subject": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
"activity": Activity names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
"timeBodyAccelerationMeanX"
"timeBodyAccelerationMeanY"
"timeBodyAccelerationMeanZ"
"timeBodyAccelerationStandardDeviationX"
"timeBodyAccelerationStandardDeviationY"
"timeBodyAccelerationStandardDeviationZ"
"timeGravityAccelerationMeanX"
"timeGravityAccelerationMeanY"
"timeGravityAccelerationMeanZ"
"timeGravityAccelerationStandardDeviationX"
"timeGravityAccelerationStandardDeviationY"
"timeGravityAccelerationStandardDeviationZ"
"timeBodyAccelerationJerkMeanX"
"timeBodyAccelerationJerkMeanY"
"timeBodyAccelerationJerkMeanZ"
"timeBodyAccelerationJerkStandardDeviationX"
"timeBodyAccelerationJerkStandardDeviationY"
"timeBodyAccelerationJerkStandardDeviationZ"
"timeBodyGyroMeanX"
"timeBodyGyroMeanY"
"timeBodyGyroMeanZ"
"timeBodyGyroStandardDeviationX"
"timeBodyGyroStandardDeviationY"
"timeBodyGyroStandardDeviationZ"
"timeBodyGyroJerkMeanX"
"timeBodyGyroJerkMeanY"
"timeBodyGyroJerkMeanZ"
"timeBodyGyroJerkStandardDeviationX"
"timeBodyGyroJerkStandardDeviationY"
"timeBodyGyroJerkStandardDeviationZ"
"timeBodyAccelerationMagMean"
"timeBodyAccelerationMagStandardDeviation"
"timeGravityAccelerationMagMean"
"timeGravityAccelerationMagStandardDeviation"
"timeBodyAccelerationJerkMagMean"
"timeBodyAccelerationJerkMagStandardDeviation"
"timeBodyGyroMagMean"
"timeBodyGyroMagStandardDeviation"
"timeBodyGyroJerkMagMean"
"timeBodyGyroJerkMagStandardDeviation"
"frequencyBodyAccelerationMeanX"
"frequencyBodyAccelerationMeanY"
"frequencyBodyAccelerationMeanZ"
"frequencyBodyAccelerationStandardDeviationX"
"frequencyBodyAccelerationStandardDeviationY"
"frequencyBodyAccelerationStandardDeviationZ"
"frequencyBodyAccelerationJerkMeanX"
"frequencyBodyAccelerationJerkMeanY"
"frequencyBodyAccelerationJerkMeanZ"
"frequencyBodyAccelerationJerkStandardDeviationX"
"frequencyBodyAccelerationJerkStandardDeviationY"
"frequencyBodyAccelerationJerkStandardDeviationZ"
"frequencyBodyGyroMeanX"
"frequencyBodyGyroMeanY"
"frequencyBodyGyroMeanZ"
"frequencyBodyGyroStandardDeviationX"
"frequencyBodyGyroStandardDeviationY"
"frequencyBodyGyroStandardDeviationZ"
"frequencyBodyAccelerationMagMean"
"frequencyBodyAccelerationMagStandardDeviation"
"frequencyBodyBodyAccelerationJerkMagMean"
"frequencyBodyBodyAccelerationJerkMagStandardDeviation"
"frequencyBodyBodyGyroMagMean"
"frequencyBodyBodyGyroMagStandardDeviation"
"frequencyBodyBodyGyroJerkMagMean"
"frequencyBodyBodyGyroJerkMagStandardDeviation"