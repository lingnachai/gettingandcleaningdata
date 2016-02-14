#uncomment the below commands to download the dataset if not existing already

#if(!file.exists("./data")){dir.create("./data")}
#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
#unzip(zipfile="./data/Dataset.zip",exdir="./data")

library(plyr) 

##Defining the directories for the file
##The data set used is "UCI HAR Dataset", first define your location of the folder below if needed

datahomefolder <- "UCI HAR Dataset" 
features_f <- paste(datahomefolder, "/features.txt", sep = "") 
activity_labels_f <- paste(datahomefolder, "/activity_labels.txt", sep = "") 
x_test_f  <- paste(datahomefolder, "/test/X_test.txt", sep = "")
y_test_f  <- paste(datahomefolder, "/test/y_test.txt", sep = "")
subject_test_f <- paste(datahomefolder, "/test/subject_test.txt", sep = "")
x_train_f <- paste(datahomefolder, "/train/X_train.txt", sep = "") 
y_train_f <- paste(datahomefolder, "/train/y_train.txt", sep = "") 
subject_train_f <- paste(datahomefolder, "/train/subject_train.txt", sep = "") 

features <- read.table(features_f,colClasses = "character", header = FALSE)
activity_labels <- read.table(activity_labels_f, col.names = c("ActivityId", "Activity"))

#######################################################################
# Q1. Merges the training and the test sets to create one data set.
##reading data to table
x_test <- read.table(x_test_f,header = FALSE)
y_test <- read.table(y_test_f,header = FALSE)
subject_test <- read.table(subject_test_f,header = FALSE)
x_train <- read.table(x_train_f,header = FALSE)
y_train <- read.table(y_train_f,header = FALSE)
subject_train <- read.table(subject_train_f,header = FALSE)

# Combining the data x, subject ,y sequence for both training and test
training_data <- cbind(x_train, subject_train, y_train)
test_data <- cbind(x_test, subject_test, y_test)
combined_data <- rbind(training_data, test_data)
##Assigning the feature names+ Subject +ActivityID to the dataset names
sensor_labels <- c(features[,2], "Subject","ActivityId")
names(combined_data) <- sensor_labels

##combined_data is the result for Q1

############################################################################################
# Q2. Extracts only the measurements on the mean and standard deviation for each measurement.

##get the columns that contains mean std and identifier Subject and ActivityID
combined_data_mean_std <- combined_data[,grepl("mean|std|Subject|ActivityId", names(combined_data))]


###########################################################################
# Q3. Uses descriptive activity names to name the activities in the data set


combined_data_mean_std <- join(combined_data_mean_std, activity_labels, by = "ActivityId", match = "first")


##############################################################
# Q4. Appropriately labels the data set with descriptive names.


# Make clearer names
names(combined_data_mean_std) <- gsub('Acc',"Acceleration",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('Gyro',"AngularSpeed",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('Mag',"Magnitude",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('\\.mean',".Mean",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('\\.std',".StandardDeviation",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('Freq\\.',"Frequency.",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('Freq$',"Frequency",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('^t',"TimeDomain.",names(combined_data_mean_std))
names(combined_data_mean_std) <- gsub('^f',"FrequencyDomain.",names(combined_data_mean_std))
# Remove parentheses ()
names(combined_data_mean_std) <- gsub('\\(|\\)',"",names(combined_data_mean_std), perl = TRUE)


######################################################################################################################
# Q5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Data_2<-aggregate(. ~Subject + Activity, combined_data_mean_std, mean)
##order by Subject and Activity
Data_2<-Data2[order(Data2$Subject,Data2$Activity),]
##write to file
write.table(Data_2, file = "tidydata.txt",row.name=FALSE)


