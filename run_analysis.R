

## Get meta data: label, column name.
tmp_features <- tolower(read.table('features.txt')[,2])
tmp_activity <- read.table('activity_labels.txt',col.names=c('activity_id','activity_label'),colClasses=c('integer','character'))
tmp_activity$activity_label <- tolower(tmp_activity$activity_label)
tmp_columns <- c('subject_id','activity_id',tmp_features)

## Read the data from the txt file
tmp_subject_test <- read.table('test/subject_test.txt')
tmp_x_test <- read.table('test/X_test.txt')
tmp_y_test <- read.table('test/y_test.txt')
tmp_test <- cbind(tmp_subject_test, tmp_y_test, tmp_x_test)
names(tmp_test) <- tmp_columns
rm(tmp_subject_test, tmp_x_test, tmp_y_test)

tmp_subject_train <- read.table('train/subject_train.txt')
tmp_x_train <- read.table('train/X_train.txt')
tmp_y_train <- read.table('train/y_train.txt')
tmp_train <- cbind(tmp_subject_train, tmp_y_train, tmp_x_train)
names(tmp_train) <- tmp_columns
rm(tmp_subject_train, tmp_x_train, tmp_y_train)

## Merges the training and the test sets to create one data set.
dataset_original <- rbind(tmp_test, tmp_train, deparse.level = 1)
rm(tmp_test, tmp_train)

## Extracts only the measurements on the mean and standard deviation for each measurement. 
dataset_mean <- dataset_original[(c(1,2,grep('mean\\(\\)*|std',tmp_columns)))]
        
## Uses descriptive activity names to name the activities in the data set.
##dataset_mean <- merge(tmp_activity, dataset_mean, by.x='activity_id')

## appropriately labels the data set with descriptive variable names
names(dataset_mean) <- gsub('\\(\\)','',names(dataset_mean))
names(dataset_mean) <- gsub('bodybody','body',names(dataset_mean))
names(dataset_mean) <- gsub('-','_',names(dataset_mean))

## tidy data set with the average of each variable for each activity and each subject. 

 # get subject list
subjects <- sort(unique(dataset_mean$subject_id))
 
## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## get each subject
for (i in 1:length(subjects)) {
        sid <- subjects[[i]]
        for (j in 1:length(tmp_activity$activity_id)) {
                
                ## get rows belong to each activity and each subject 
                tmp_data <- dataset_mean[which(dataset_mean$subject_id == sid & dataset_mean$activity_id == j ),]
                
                ## return the average of each variable
                if (!exists('dataset_average')) {
                        dataset_average <- t(colMeans(tmp_data))
                } else {
                        dataset_average <- rbind(dataset_average, t(colMeans(tmp_data)))
                }
                
        }
}
rm(i,j,sid,subjects)

## Uses descriptive activity names to name the activities in the data set.
dataset_average <- merge(tmp_activity, dataset_average, by.x='activity_id',sort = TRUE)

## Create tidy data set
write.table(dataset_average[order(dataset_average$activity_id, dataset_average$subject_id),], 'tidydataset.txt', row.name=FALSE)

