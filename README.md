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



# Code book

####activity_id
 * **Class**: Integer 
 * **Description**: An identifier of the activity name that the subject did in the experiment.
	* 1 walking
	* 2 walking_upstairs
	* 3 walking_downstairs
	* 4 sitting
	* 5 standing
	* 6 laying
	
	
	
####activity_label
 * **Class**: Character 
 * **Description**: Activity name.
	
	
	
####subject_id
 * **Class**: Integer 
 * **Description**: An identifier of the subject who carried out the experiment.
	
	
	
####time_body_accelerometer_mean_xyz
 * **Class**: Numeric
 * **Description**:
	* time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####time_body_accelerometer_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
	* time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####time_gravity_accelerometer_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* gravity acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####time_gravity_accelerometer_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* gravity acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####time_body_accelerometer_jerk_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####time_body_accelerometer_jerk_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####time_body_gyroscope_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####time_body_gyroscope_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####time_body_gyroscope_jerk_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####time_body_gyroscope_jerk_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####time_body_accelerometer_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####time_body_accelerometer_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####time_gravity_accelerometer_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* gravity acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####time_gravity_accelerometer_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* gravity acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####time_body_accelerometer_jerk_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####time_body_accelerometer_jerk_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####time_body_gyroscope_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####time_body_gyroscope_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####time_body_gyroscope_jerk_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####time_body_gyroscope_jerk_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Time domain signals were captured at a constant rate of 50 Hz.
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####frequency_body_accelerometer_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####frequency_body_accelerometer_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####frequency_body_accelerometer_jerk_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####frequency_body_accelerometer_jerk_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####frequency_body_gyroscope_mean_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Mean value
	
	
	
####frequency_body_gyroscope_standard_deviation_xyz
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope raw signals 
	* 3-axial signals in the X, Y and Z directions
	* Standard deviation
	
	
	
####frequency_body_accelerometer_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####frequency_body_accelerometer_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####frequency_body_accelerometer_jerk_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####frequency_body_accelerometer_jerk_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Accelerometer Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####frequency_body_gyroscope_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####frequency_body_gyroscope_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope raw signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation
	
	
	
####frequency_body_gyroscope_jerk_magnitude_mean
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Mean value
	
	
	
####frequency_body_gyroscope_jerk_magnitude_standard_deviation
 * **Class**: Numeric
 * **Description**:
 	* Frequency domain signals, a Fast Fourier Transform (FFT) was applied to the signals
	* Body acceleration signals
	* Gyroscope Jerk signals 
	* Magnitude of three-dimensional calculated using the Euclidean norm
	* Standard deviation





###Note

* Raw Data:
	* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* A full description is available at the site where the data was obtained: 
	* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 







