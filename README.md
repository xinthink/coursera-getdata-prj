# [getdata-005 project](https://class.coursera.org/getdata-005/)

## How to run the script

### Download project data

1. download zipped data file from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. unzip it into the project root directory, so that you get a `UCI HAR Dataset` directory under the project root.

### Run the script

in Linux/Mac command line:

    R -q -f run_analysis.R

or, you can also source it in RStudio

the result data file will be generated under the `data` directory, named `avgBySubject.txt`.


## Code Book

`avgBySubject.txt` is a tidy data set with the average of each variable for each activity and each subject.

In the following variable names:

* prefix 'avg' means it's the average of measurements per subject per activity
* prefix 't' to denote time domain signals
* prefix 'f' to denote frequency domain signals
* 'mean': mean value of the original measurements
* 'std': standard deviation of the original measurements
* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions


Variables in data set:

1. subject - identifies the subject who performed the activity. Its range is from 1 to 30.
1. activity - a factor for activities:

    (1) WALKING
    (2) WALKING_UPSTAIRS
    (3) WALKING_DOWNSTAIRS
    (4) SITTING
    (5) STANDING
    (6) LAYING

1. avg-tBodyAcc-mean-X
1. avg-tBodyAcc-mean-Y
1. avg-tBodyAcc-mean-Z
1. avg-tBodyAcc-std-X
1. avg-tBodyAcc-std-Y
1. avg-tBodyAcc-std-Z
1. avg-tGravityAcc-mean-X
1. avg-tGravityAcc-mean-Y
1. avg-tGravityAcc-mean-Z
1. avg-tGravityAcc-std-X
1. avg-tGravityAcc-std-Y
1. avg-tGravityAcc-std-Z
1. avg-tBodyAccJerk-mean-X
1. avg-tBodyAccJerk-mean-Y
1. avg-tBodyAccJerk-mean-Z
1. avg-tBodyAccJerk-std-X
1. avg-tBodyAccJerk-std-Y
1. avg-tBodyAccJerk-std-Z
1. avg-tBodyGyro-mean-X
1. avg-tBodyGyro-mean-Y
1. avg-tBodyGyro-mean-Z
1. avg-tBodyGyro-std-X
1. avg-tBodyGyro-std-Y
1. avg-tBodyGyro-std-Z
1. avg-tBodyGyroJerk-mean-X
1. avg-tBodyGyroJerk-mean-Y
1. avg-tBodyGyroJerk-mean-Z
1. avg-tBodyGyroJerk-std-X
1. avg-tBodyGyroJerk-std-Y
1. avg-tBodyGyroJerk-std-Z
1. avg-tBodyAccMag-mean
1. avg-tBodyAccMag-std
1. avg-tGravityAccMag-mean
1. avg-tGravityAccMag-std
1. avg-tBodyAccJerkMag-mean
1. avg-tBodyAccJerkMag-std
1. avg-tBodyGyroMag-mean
1. avg-tBodyGyroMag-std
1. avg-tBodyGyroJerkMag-mean
1. avg-tBodyGyroJerkMag-std
1. avg-fBodyAcc-mean-X
1. avg-fBodyAcc-mean-Y
1. avg-fBodyAcc-mean-Z
1. avg-fBodyAcc-std-X
1. avg-fBodyAcc-std-Y
1. avg-fBodyAcc-std-Z
1. avg-fBodyAccJerk-mean-X
1. avg-fBodyAccJerk-mean-Y
1. avg-fBodyAccJerk-mean-Z
1. avg-fBodyAccJerk-std-X
1. avg-fBodyAccJerk-std-Y
1. avg-fBodyAccJerk-std-Z
1. avg-fBodyGyro-mean-X
1. avg-fBodyGyro-mean-Y
1. avg-fBodyGyro-mean-Z
1. avg-fBodyGyro-std-X
1. avg-fBodyGyro-std-Y
1. avg-fBodyGyro-std-Z
1. avg-fBodyAccMag-mean
1. avg-fBodyAccMag-std
1. avg-fBodyBodyAccJerkMag-mean
1. avg-fBodyBodyAccJerkMag-std
1. avg-fBodyBodyGyroMag-mean
1. avg-fBodyBodyGyroMag-std
1. avg-fBodyBodyGyroJerkMag-mean
1. avg-fBodyBodyGyroJerkMag-st
