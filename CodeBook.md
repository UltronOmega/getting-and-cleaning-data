# CodeBook.md
##Getting-and-Cleaning-Data; CodeBook 
######  This codebook is a part of course project for getting and cleaning data. I will try to decribe the variables, data and transformations used to clean up the data to compelete this amazing project

*The data can be downloaded from here:*
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

> The data in this dataset came from accelrometer and gyroscope rawsignals of smart phone. This data was filtered and normalized and provided to us for further cleaning to create a tidy data set.
> I extracted only the columns i needed from this dataset which are values for mean (mean(): Mean value) and stddev (std(): Standard deviation) as asked in this assignment.

> All the information about the details of this data can be obtained from this link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
>upon downloading this first link, one can see all the variables in features text file 

> I have provided more information on my procdedure in Read.md file in this repo. 
>The dataset contains these files:
* 'README.txt'
2.  'features_info.txt': Shows variables 
3.  'features.txt': all of the features.
4.  'activity_labels.txt': labels & activity name.
5.  'train/X_train.txt': train set.
6.  'train/y_train.txt': train labels.
7.  'test/X_test.txt': test set.
8.  'test/y_test.txt': test labels.

######  Transformation
>After merging both training and test data and providing them with column names, activity and subject ID, I extracted only the columns i needed which were mean and std.dev
>After assigning changing the acvitiyID to activity labels i transformed the data to look more like long format and then recreated whole dataset to get all extracted cols as seprate varibles
>After transforming the data i got seprate cols as variables names
>then i wrote the data in my Rlibrary.

Thanks
