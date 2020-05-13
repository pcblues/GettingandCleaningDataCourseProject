# Training and Test Data of Human Activity from the Samsung Galaxy 5 

Author:   Mark Osborne  
Date:     13 May 2020  
Version:  1  
 
 
This tidy dataset contains the averages of various readings grouped by activity and subject of measurements for use in machine learning.


### Data Files

The working directory contains the following files:

Activity_Labels.txt  
features.txt  
features_info.txt  
subject_test.txt  
subject_train.txt  
X_Test.txt  
X_Train.txt  
y_test.txt  
y_train.txt  


### Process

Section 1 loads the data files into dplyr tbl's and merges them into a single data set.

Section 2 reads the provided column names into the data set and names the Activity and Subject columns. It then extracts only the columns containing std() or mean() to retrieve the standard deviation and mean measurements.

Section 3 maps the Activity descriptions with the Activity variables to create a human-readable activity.

Section 4 expands the column names into a human-readable format.

Section 5 groups the data set by Activity Description and Subject, and then mutates the mean and standard deviation variables into averages for each group of activity and subject.



### Attribution  

Dataset used in this analyses from:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 