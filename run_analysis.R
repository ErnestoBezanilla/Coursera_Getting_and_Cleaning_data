# Loads library
library(dplyr) 

# Reads files.

xtest <- read.csv("./test/X_test.txt",header=FALSE,sep="")
ytest <- read.csv("./test/y_test.txt",header=FALSE,sep="")
stest <- read.csv("./test/subject_test.txt",header=FALSE,sep="")
xtrain <- read.csv("./train/X_train.txt",header=FALSE,sep="")
ytrain <- read.csv("./train/y_train.txt",header=FALSE,sep="")
strain <- read.csv("./train/subject_train.txt",header=FALSE,sep="")
feat <- read.csv("./features.txt",header=FALSE,sep="",stringsAsFactors = FALSE)
lab <- read.csv("./activity_labels.txt",header=FALSE,sep="",stringsAsFactors = FALSE)

# Adds variable names to data sets

names(xtest) <- feat[,2]
names(xtrain) <- feat[,2]
names(ytest) <- "activity"
names(ytrain) <- "activity"
names(stest) <- "subject"
names(strain) <- "subject"

# Adds variables 'subject' and 'activity' to 'test' and 'train' data sets

test <- cbind(stest,ytest,xtest)

train <- cbind(strain,ytrain,xtrain)

# Merges the training and the test sets to create one data set.

dat <- rbind(test,train)

# Extracts only the measurements on the mean and standard deviation for each measurement.

meanstd<-dat[,grepl("subject|activity|mean[(]|std[(]",names(dat))]

# Uses descriptive activity names to name the activities in the data set

meanstd[,2]<-lab[meanstd[,2],2]

# Appropriately labels the data set with descriptive variable names.

names(meanstd)<-sub("^t","time",names(meanstd))
names(meanstd)<-sub("^f","frequency",names(meanstd))
names(meanstd)<-sub("Acc","Acceleration",names(meanstd))
names(meanstd)<-sub("[-]mean[(][)](-)?","Mean",names(meanstd))
names(meanstd)<-sub("[-]std[(][)](-)?","StandardDeviation",names(meanstd))

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

mean_by_subject_activity <- meanstd %>% group_by(subject,activity) %>% summarise_each(funs(mean))


# Writes tidy data set out

write.table(mean_by_subject_activity,file="./mean_by_subject_activity.txt",row.names = FALSE)



