

## ## ## Get meta data: label, column name.
tmp_features <- tolower(read.table('features.txt')[,2])
tmp_activity <- read.table('activity_labels.txt',col.names=c('activity_id','activity_label'),colClasses=c('integer','character'))
tmp_columns_name <- c('subject_id','activity_id',tmp_features) # set column name

## ## ## Read the data from the txt file
tmp_test <- cbind(read.table('test/subject_test.txt'), read.table('test/y_test.txt'), read.table('test/X_test.txt'))
tmp_train <- cbind(read.table('train/subject_train.txt'), read.table('train/y_train.txt'), read.table('train/X_train.txt'))

## Merges the training and the test sets to create one data set.
dataset_original <- rbind(tmp_test, tmp_train, deparse.level = 1)
names(dataset_original) <- tmp_columns_name

rm(tmp_test, tmp_train) # clear up temp dt

## Extracts only the measurements on the mean and standard deviation for each measurement. 
dataset_mean <- dataset_original[(c(1,2,grep('mean\\(\\)*|std\\(\\)',tmp_columns_name)))]
        
## appropriately labels the data set with descriptive variable names
## ## split the name and get clean name
columns_name <- names(dataset_mean)
columns_name <- gsub('-','_',columns_name)
columns_name <- gsub('bodybody','body',columns_name)
columns_name <- gsub('body','_body_',columns_name)
columns_name <- gsub('gravity','_gravity_',columns_name)
columns_name <- gsub('mag_','_mag_',columns_name)
columns_name <- gsub('jerk_','_jerk_',columns_name)
## ## replace the arrbiriaiont with descriptive names
columns_name <- gsub('\\(\\)','',columns_name)
columns_name <- gsub('^t_','time_',columns_name)
columns_name <- gsub('^f_','frequency_',columns_name)
columns_name <- gsub('_std','_standard_deviation',columns_name)
columns_name <- gsub('_mag_','_magnitude_',columns_name)
columns_name <- gsub('_gyro_','_gyroscope_',columns_name)
columns_name <- gsub('_acc_','_accelerometer_',columns_name)
## ## apply the new columns to the data set
names(dataset_mean) <- columns_name

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
dataset_average <- data.frame()
## get each subject, from 1 to the max subject id
for (sid in 1:max(dataset_mean$subject_id)) {
        for (aid in 1:max(tmp_activity$activity_id)) {
                
                ## get rows belong to each activity and each subject 
                tmp_data <- dataset_mean[which(dataset_mean$subject_id == sid & dataset_mean$activity_id == aid),]
              
                ## return the average of each variable
                if(nrow(tmp_data)>0){ ## in case some subject_id or activity_id is missing
                        dataset_average <- rbind(dataset_average, t(colMeans(tmp_data)))
                }
                
        }
}

## Uses descriptive activity names to name the activities in the data set.
dataset_average <- merge(tmp_activity, dataset_average, by.x='activity_id')

## Create tidy data set
write.table(dataset_average[order(dataset_average$activity_id, dataset_average$subject_id),], 'tidydataset.txt', row.name=FALSE)

