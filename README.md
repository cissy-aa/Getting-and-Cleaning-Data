Getting-and-Cleaning-Data
=========================


# How the script works?
 1. The script should put in the same working directory with the Samsung data.
 2. Reads the meta data which contians label name, column name, activity first and put it aside.
 3. Reads the data from the txt file, merges the training and the test sets to create one data set 'data_original'.
 4. Extracts only the measurements on the mean and standard deviation for each measurement by grep the text string 'mean()' and 'std()' from the column name, the results will be put in the data set 'dataset_mean'.
 5. Label the dataset, clear up '()' and '-'.
 6. Creates a second, independent tidy data set 'data_average'.
 7. Find the all rows for each activity and each subject, and use 'colMeans' to get the average number for each column, put them in the data set 'data_average'.
 8. Merge the 'data_average' and 'tmp_activity' in order to use descriptive activity names in the data set. To use 'colMeans' properly in the previous step, we'd better put this step at last. 
 9. Output 'data_average' to txt file 'tidydataset.txt' by using 'write.table()' and 'row.name=FALSE'.
