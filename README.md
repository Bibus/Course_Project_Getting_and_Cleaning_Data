# Raw data
the raw data can be found at:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> 
More information can be found at
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

# Transformations in run_analysis script
We have processed the raw data as follows:
* first the raw data is loaded and the test and train data sets are merged.
* only the means and standard deviations of the features are retained and appropriate names are given. This is saved in the data frame x_red.
* the activity and the subject id are  now added as features to the reduced dataset
* using the dplyr package the data is grouped according to the activity and subject id, the resulting data frama is called x_grouped.
* finally the avergages are calculated for each feature per activity and subject which is stored in the data frame Sum. This is then written under the name TidyData.txt.

# Features
All Features are normalized and bounded within [-1,1].

the activity denotes the activity (laying, standing, sitting, walking_downstairs, walking_upstairs, walking).

the subject is a number from 1 to 30 and denotes the subject.

the variables are are normalized and bounded within [-1,1] and are:
tBodyAcc.mean...X	tBodyAcc.mean...Y	tBodyAcc.mean...Z	tBodyAcc.std...X	tBodyAcc.std...Y	tBodyAcc.std...Z	tGravityAcc.mean...X	tGravityAcc.mean...Y	tGravityAcc.mean...Z	tGravityAcc.std...X	tGravityAcc.std...Y	tGravityAcc.std...Z	tBodyAccJerk.mean...X	tBodyAccJerk.mean...Y	tBodyAccJerk.mean...Z	tBodyAccJerk.std...X	tBodyAccJerk.std...Y	tBodyAccJerk.std...Z	tBodyGyro.mean...X	tBodyGyro.mean...Y	tBodyGyro.mean...Z	tBodyGyro.std...X	tBodyGyro.std...Y	tBodyGyro.std...Z	tBodyAccMag.mean..	tBodyAccMag.std..	tBodyAccMag.mad..	tBodyAccMag.max..	tBodyAccMag.min..	tBodyAccMag.sma..	tGravityAccMag.mean..	tGravityAccMag.std..	tBodyAccJerkMag.mean..	tBodyAccJerkMag.std..	tBodyGyroMag.mean..	tBodyGyroMag.std..	tBodyGyroJerkMag.mean..	tBodyGyroJerkMag.std..	fBodyAcc.mean...X	fBodyAcc.mean...Y	fBodyAcc.mean...Z	fBodyAcc.std...X	fBodyAcc.std...Y	fBodyAcc.std...Z	fBodyAccJerk.mean...X	fBodyAccJerk.mean...Y	fBodyAccJerk.mean...Z	fBodyAccJerk.std...X	fBodyAccJerk.std...Y	fBodyAccJerk.std...Z	fBodyGyro.mean...X	fBodyGyro.mean...Y	fBodyGyro.mean...Z	fBodyGyro.std...X	fBodyGyro.std...Y	fBodyGyro.std...Z	fBodyAccMag.mean..	fBodyAccMag.std..

# run_analysis script 
The run_analysis R-script load the raw data