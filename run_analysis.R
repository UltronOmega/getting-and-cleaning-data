#This is an R script you can directly copy paste in your R studio and it will work. 
#Make sure you have the downloaded and unziped data in a folder named 'UCI HAR Dataset' 
#place the 'UCI HAR Dataset' in your working directory of R. This downloading and unzipping can be done using R

#loading the required packages from library
library(reshape2)
library(data.table)
#reading the data 
xtrain<-read.table("./UCI HAR Dataset//train//X_train.txt",sep="")  
ytrain<-read.table("./UCI HAR Dataset//train//y_train.txt",sep="")
xtest<-read.table("./UCI HAR Dataset//test//X_test.txt",sep="")
ytest<-read.table("./UCI HAR Dataset//test//y_test.txt",sep="")
feature<-read.table("./UCI HAR Dataset/features.txt",sep="")
#extracting col names
rnames<-feature[,2]
names(xtrain)<-rnames
names(xtest)<-rnames
#reading more data
activitylabel<-read.table("./UCI HAR Dataset/activity_labels.txt",sep="")[,2]
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",sep="")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",sep="")
#adding subjectIDs data to train and test data        
train<-cbind(subject_train,ytrain,xtrain)  
test<-cbind(subject_test,ytest,xtest)
#renameing activityID column
names(train)[2]<-"id"        
names(test)[2]<-"id"         
#merging all the data
traintest<-rbind(train,test)                              
dim(traintest)               
##This should be your output after merging all the data
## [1] 10299   562
#changing the caps to make all names same
names(traintest)<-tolower(names(traintest)) 
#extracting only required cols & naming all the activities with labels
features<-grepl("\\bmean\\b|\\bstd\\b",rnames)
dat<-traintest[,features==T] 
dat[,2]<-activitylabel[dat[,2]]
#renaming some of the cols to be more descriptive
colnames(dat)[colnames(dat)=="id"]<- "activity"
names(dat)[1]<-"subjectID"
#transforming the data and getting tidy variables
meltdat<-melt(dat,id=c("subjectID","activity"))
#generating the tidy data output
final_tidy_data<-final_tidy_data<-dcast(meltdat,subjectID+activity~variable,mean)
#the finaloutput can be read in excel or R to see all the tidy data variables
write.table(final_tidy_data,"gettinCleaningDataProject.txt",sep=",",row.names = FALSE)
