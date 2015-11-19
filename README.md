# Getting-and-Cleaning-Data
##This is a read me document for getting and cleaning data course project. Describing the basic instruction on this project
######The goal of this project is create a tidy data set where data is collected from different users daily activity. This data is gathered from 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
The details about this data set are described here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data can be downloaded from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Here are the basic steps in my script:
*  Download and unzipped data in R (not shown as data is already in my Rlib directory)
2.  All data is in a folder called called UCI HAR Dataset
3.  In R studio load required libraries as shown in my script
4.  Merged both training and test set, after reading all files, adding activity for all observations and assigning everything specific colnames
5.  Extracted only required columns as per the instruction in assignment with mean and stddev
6.  Replaced the activity IDs with activity names to define each activity done by subjects
7.  Finally created an independent data set with subjectID and activity and then reformed all cols as separate varibles
8.  Written the new tidy data in rlib which is my directory for R.


