# Project
# Author: Mark Osborne

# Install/Load dplyr
install.packages("dplyr")
library(dplyr)
install.packages("rlist")
library(rlist)

# Set working directory
setwd("data")

##############################################################################
# 1. Merges the training and the test sets to create one data set.
##############################################################################


# Load to tables
Xtest<-read.table("X_test.txt")
ytest<-read.table("y_test.txt")
Xtrain<-read.table("X_train.txt")
ytrain<-read.table("y_train.txt")
subtest<-read.table("subject_test.txt")
subtrain<-read.table("subject_train.txt")

# Convert to dplyr tbl
Xtest_dp <- tbl_df(Xtest)
ytest_dp <- tbl_df(ytest)
Xtrain_dp<- tbl_df(Xtrain)
ytrain_dp<- tbl_df(ytrain)
subtest_dp<- tbl_df(subtest)
subtrain_dp<- tbl_df(subtrain)

# Remove unneeded data
rm(Xtest)
rm(ytest)
rm(Xtrain)
rm(ytrain)
rm(subtest)
rm(subtrain)

# Bind test and train data
X <- bind_rows(Xtrain_dp,Xtest_dp,)
y <- bind_rows(ytrain_dp,ytest_dp)
s <- bind_rows(subtrain_dp,subtest_dp)

# Bind y, subjects and X
yX <- bind_cols(y,s, X)

##############################################################################
## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
##############################################################################

# Name columns
features<-read.table("features.txt",stringsAsFactors = FALSE)
featureCols<-list.append("Activity","Subject",features[,2])
names(yX)<-featureCols

# revert variable names
yXstdmean<- bind_cols(yX[c("Activity","Subject")], yX[,featureCols[grep('mean[(]|std()',featureCols)]])

##############################################################################
## 3. Uses descriptive activity names to name the activities in the data set
##############################################################################
activities<-read.table("activity_labels.txt",stringsAsFactors = FALSE)

# map activity labels to activity (y)
yXstdmean<-bind_cols(lapply(yXstdmean[,1],function(x) activities[x,2]),yXstdmean)
names(yXstdmean)[1]<-'Activity Desc'
names(yXstdmean)[2]<-'Activity'

##############################################################################
## 4. Appropriately labels the data set with descriptive variable names.
##############################################################################

names(yXstdmean)<-gsub('tBody','Time Body ',names(yXstdmean))
names(yXstdmean)<-gsub('tGravity','Time Gravity ',names(yXstdmean))
names(yXstdmean)<-gsub('fBody','FFT Body ',names(yXstdmean))
names(yXstdmean)<-gsub('-mean[(][)]',' Mean ',names(yXstdmean))
names(yXstdmean)<-gsub('-std[(][)]',' SD ',names(yXstdmean))
names(yXstdmean)<-gsub('Jerk',' Jerk ',names(yXstdmean))
names(yXstdmean)<-gsub('Mag',' Magnetr ',names(yXstdmean))
names(yXstdmean)<-gsub('Acc',' Accelr ',names(yXstdmean))
names(yXstdmean)<-gsub('Gyro',' Gyromr ',names(yXstdmean))
names(yXstdmean)<-gsub('   ',' ',names(yXstdmean))
names(yXstdmean)<-gsub('  ',' ',names(yXstdmean))
names(yXstdmean)<-gsub('-','',names(yXstdmean))
names(yXstdmean)<-gsub('[ ]$','',names(yXstdmean))


##############################################################################
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
##############################################################################
ds<-yXstdmean
dfout<-ds %>% group_by(`Activity Desc`,Subject) %>% mutate_at(colnames(ds[,4:69]),mean) %>% distinct %>% arrange(`Subject`,`Activity Desc`)
dfoutfinal <- dfout[-2]
dfoutfinal
