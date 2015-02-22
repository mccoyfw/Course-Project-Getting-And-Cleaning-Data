In this code book you will find descriptions of the data inputs, outputs, and various modifications performed by the script run_analysis.R. Important features internal to the script will also be described.


### Data Inputs
The files subject_test.txt and subject_train.txt contain the subject identifiers for 2947 test and 7352 training records respectively. Total number of records for the test+training merged dataset is 10299. Input data are all taken from the following 6 files:



- test/subject_test.txt
- test/y_test.txt
- test/X_test.txt
- train/subject_train.txt
- train/y_train.txt
- train/X_train.txt

The files y_test.txt and y_train.txt contain activity identifiers in the form of integers (1 - 6) which are mapped to different activity states. The mapping methodology is below:

[1]	WALKING

[2]	WALKING_UPSTAIRS

[3]	WALKING_DOWNSTAIRS

[4]	SITTING

[5]	STANDING

[6]	LAYING


###Data Outputs
The final result of run_analysis.R produces a tidy data set that includes both the training and test data sets. Feature names with the format "mean()X" are the average of the feature X grouped by "Activity" and "Subject". The script will write the data into a file called “tidy_data.txt”. If you open the file you will see that the columns are the variables "subject", "activity", and variables named after the features below. The rows represent observations for each combination of 'subject', 'activity' and ‘features’ which is the specific measurement taken from the features list which you will find below:

#####Features Legend
- t - time domain
- f - Frequency domain.
- mean - Average for the preceding descriptors in the names.
- std - standard deviation for the preceding descriptors in the names.
- X, Y, or Z - Denotes 3-axial signals in the X, Y and Z directions.
- BodyAcc - Measures acceleration signal for the body.
- GravityAcc - Measures acceleration signals for gravity.
- BodyAccJerk - Body linear acceleration jerk signals.
- BodyGyroJerk - Angular velocity jerk signals.
- BodyAccMag - Magnitude of body acceleration signals.
- GravityAccMag - Magnitude of angular velocity signals.
- BodyAccJerkMag - Magnitude of body acceleration jerk signals.
- BodyGyroMag - Magnitude of body angular velocity signals.
- BodyGyroJerkMag - Magnitude of angular velocity jerk signals.
- activity - Class labels of the activity subjects engaged in.
- subject - Unique subject identifier with values of 1-30.


#####Full Features List
- activity
- subject
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()