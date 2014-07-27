library(LaF)

dataDir <- 'UCI HAR Dataset'
cols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241,
          253:254, 266:271, 345:350, 424:429, 503:504,
          516:517, 529:530, 542:543 )  # mean/std measurement columns
activities <- c(
  'WALKING',
  'WALKING_UPSTAIRS',
  'WALKING_DOWNSTAIRS',
  'SITTING',
  'STANDING',
  'LAYING'
)

trainX <- laf_open_fwf(paste(dataDir, 'train/X_train.txt', sep='/'),
                       column_widths=rep(16, 561), column_types=rep('numeric', 561))
trainX <- trainX[, cols]
trainY <- read.csv(paste(dataDir, 'train/y_train.txt', sep='/'), header=F)
trainSub <- read.csv(paste(dataDir, 'train/subject_train.txt', sep='/'), header=F)

testX <- laf_open_fwf(paste(dataDir, 'test/X_test.txt', sep='/'),
                   column_widths=rep(16, 561), column_types=rep('numeric', 561))
testX <- testX[, cols]
testY <- read.csv(paste(dataDir, 'test/y_test.txt', sep='/'), header=F)
testSub <- read.csv(paste(dataDir, 'test/subject_test.txt', sep='/'), header=F)

# combine the traning set & test set
sub <- rbind(trainSub, testSub)
y <- rbind(trainY, testY)
DF <- data.frame(rbind(trainX, testX), sub, y)

names(DF) <- c(
  "tBodyAcc-mean-X",
  "tBodyAcc-mean-Y",
  "tBodyAcc-mean-Z",
  "tBodyAcc-std-X",
  "tBodyAcc-std-Y",
  "tBodyAcc-std-Z",
  "tGravityAcc-mean-X",
  "tGravityAcc-mean-Y",
  "tGravityAcc-mean-Z",
  "tGravityAcc-std-X",
  "tGravityAcc-std-Y",
  "tGravityAcc-std-Z",
  "tBodyAccJerk-mean-X",
  "tBodyAccJerk-mean-Y",
  "tBodyAccJerk-mean-Z",
  "tBodyAccJerk-std-X",
  "tBodyAccJerk-std-Y",
  "tBodyAccJerk-std-Z",
  "tBodyGyro-mean-X",
  "tBodyGyro-mean-Y",
  "tBodyGyro-mean-Z",
  "tBodyGyro-std-X",
  "tBodyGyro-std-Y",
  "tBodyGyro-std-Z",
  "tBodyGyroJerk-mean-X",
  "tBodyGyroJerk-mean-Y",
  "tBodyGyroJerk-mean-Z",
  "tBodyGyroJerk-std-X",
  "tBodyGyroJerk-std-Y",
  "tBodyGyroJerk-std-Z",
  "tBodyAccMag-mean",
  "tBodyAccMag-std",
  "tGravityAccMag-mean",
  "tGravityAccMag-std",
  "tBodyAccJerkMag-mean",
  "tBodyAccJerkMag-std",
  "tBodyGyroMag-mean",
  "tBodyGyroMag-std",
  "tBodyGyroJerkMag-mean",
  "tBodyGyroJerkMag-std",
  "fBodyAcc-mean-X",
  "fBodyAcc-mean-Y",
  "fBodyAcc-mean-Z",
  "fBodyAcc-std-X",
  "fBodyAcc-std-Y",
  "fBodyAcc-std-Z",
  "fBodyAccJerk-mean-X",
  "fBodyAccJerk-mean-Y",
  "fBodyAccJerk-mean-Z",
  "fBodyAccJerk-std-X",
  "fBodyAccJerk-std-Y",
  "fBodyAccJerk-std-Z",
  "fBodyGyro-mean-X",
  "fBodyGyro-mean-Y",
  "fBodyGyro-mean-Z",
  "fBodyGyro-std-X",
  "fBodyGyro-std-Y",
  "fBodyGyro-std-Z",
  "fBodyAccMag-mean",
  "fBodyAccMag-std",
  "fBodyBodyAccJerkMag-mean",
  "fBodyBodyAccJerkMag-std",
  "fBodyBodyGyroMag-mean",
  "fBodyBodyGyroMag-std",
  "fBodyBodyGyroJerkMag-mean",
  "fBodyBodyGyroJerkMag-std",
  "subject",
  "activity"
  )

# DF['activity'] <- factor(DF[['activity']], levels=c(1:6), labels=activities)


# average of each variable for each activity and each subject.
avgBySub <- aggregate(DF, by=list(DF[['subject']], DF[['activity']]), FUN=mean)
names(avgBySub) <- c(
  "subject",
  "activity",
  "avg-tBodyAcc-mean-X",
  "avg-tBodyAcc-mean-Y",
  "avg-tBodyAcc-mean-Z",
  "avg-tBodyAcc-std-X",
  "avg-tBodyAcc-std-Y",
  "avg-tBodyAcc-std-Z",
  "avg-tGravityAcc-mean-X",
  "avg-tGravityAcc-mean-Y",
  "avg-tGravityAcc-mean-Z",
  "avg-tGravityAcc-std-X",
  "avg-tGravityAcc-std-Y",
  "avg-tGravityAcc-std-Z",
  "avg-tBodyAccJerk-mean-X",
  "avg-tBodyAccJerk-mean-Y",
  "avg-tBodyAccJerk-mean-Z",
  "avg-tBodyAccJerk-std-X",
  "avg-tBodyAccJerk-std-Y",
  "avg-tBodyAccJerk-std-Z",
  "avg-tBodyGyro-mean-X",
  "avg-tBodyGyro-mean-Y",
  "avg-tBodyGyro-mean-Z",
  "avg-tBodyGyro-std-X",
  "avg-tBodyGyro-std-Y",
  "avg-tBodyGyro-std-Z",
  "avg-tBodyGyroJerk-mean-X",
  "avg-tBodyGyroJerk-mean-Y",
  "avg-tBodyGyroJerk-mean-Z",
  "avg-tBodyGyroJerk-std-X",
  "avg-tBodyGyroJerk-std-Y",
  "avg-tBodyGyroJerk-std-Z",
  "avg-tBodyAccMag-mean",
  "avg-tBodyAccMag-std",
  "avg-tGravityAccMag-mean",
  "avg-tGravityAccMag-std",
  "avg-tBodyAccJerkMag-mean",
  "avg-tBodyAccJerkMag-std",
  "avg-tBodyGyroMag-mean",
  "avg-tBodyGyroMag-std",
  "avg-tBodyGyroJerkMag-mean",
  "avg-tBodyGyroJerkMag-std",
  "avg-fBodyAcc-mean-X",
  "avg-fBodyAcc-mean-Y",
  "avg-fBodyAcc-mean-Z",
  "avg-fBodyAcc-std-X",
  "avg-fBodyAcc-std-Y",
  "avg-fBodyAcc-std-Z",
  "avg-fBodyAccJerk-mean-X",
  "avg-fBodyAccJerk-mean-Y",
  "avg-fBodyAccJerk-mean-Z",
  "avg-fBodyAccJerk-std-X",
  "avg-fBodyAccJerk-std-Y",
  "avg-fBodyAccJerk-std-Z",
  "avg-fBodyGyro-mean-X",
  "avg-fBodyGyro-mean-Y",
  "avg-fBodyGyro-mean-Z",
  "avg-fBodyGyro-std-X",
  "avg-fBodyGyro-std-Y",
  "avg-fBodyGyro-std-Z",
  "avg-fBodyAccMag-mean",
  "avg-fBodyAccMag-std",
  "avg-fBodyBodyAccJerkMag-mean",
  "avg-fBodyBodyAccJerkMag-std",
  "avg-fBodyBodyGyroMag-mean",
  "avg-fBodyBodyGyroMag-std",
  "avg-fBodyBodyGyroJerkMag-mean",
  "avg-fBodyBodyGyroJerkMag-std"
)

avgBySub['activity'] <- factor(avgBySub[['activity']], levels=c(1:6), labels=activities)
write.csv(avgBySub[, c(1:68)], 'data/avgBySubject.txt', row.names=F, quote=F)  # omit the last 'subject' column
