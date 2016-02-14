# Code Book

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The dataset includes the following files:

* - 'README.txt'
* - 'features_info.txt': Shows information about the variables used on the feature vector.
* - 'features.txt': List of all features.
* - 'activity_labels.txt': Links the class labels with their activity name.
* - 'train/X_train.txt': Training set.
* - 'train/y_train.txt': Training labels.
* - 'test/X_test.txt': Test set.
* - 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
* - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The signals were sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window at 50 Hz). From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The set of variables that were estimated from these signals are: 
* • mean(): Mean value
* • std(): Standard deviation
* • mad(): Median absolute deviation 
* • max(): Largest value in array
* • min(): Smallest value in array
* • sma(): Signal magnitude area
* • energy(): Energy measure. Sum of the squares divided by the number of values. 
* • iqr(): Interquartile range 
* • entropy(): Signal entropy
* • arCoeff(): Autoregression coefficients with Burg order equal to 4
* • correlation(): Correlation coefficient between two signals
* • maxInds(): Index of the frequency component with largest magnitude
* • meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* • skewness(): Skewness of the frequency domain signal 
* • kurtosis(): Kurtosis of the frequency domain signal 
* • bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* • angle(): Angle between some vectors.


## After running the "run_analysis.R" program
The original data set are re-organized to a tidy data set "tidydata.txt". Below are the column details
*  [1] "Subject"                                                      
*  [2] "Activity"                                                     
*  [3] "ActivityId"                                                   
*  [4] "TimeDomain.BodyAcceleration-mean-X"                           
*  [5] "TimeDomain.BodyAcceleration-mean-Y"                           
*  [6] "TimeDomain.BodyAcceleration-mean-Z"                           
*  [7] "TimeDomain.BodyAcceleration-std-X"                            
*  [8] "TimeDomain.BodyAcceleration-std-Y"                            
*  [9] "TimeDomain.BodyAcceleration-std-Z"                            
* [10] "TimeDomain.GravityAcceleration-mean-X"                        
* [11] "TimeDomain.GravityAcceleration-mean-Y"                        
* [12] "TimeDomain.GravityAcceleration-mean-Z"                        
* [13] "TimeDomain.GravityAcceleration-std-X"                         
* [14] "TimeDomain.GravityAcceleration-std-Y"                         
* [15] "TimeDomain.GravityAcceleration-std-Z"                         
* [16] "TimeDomain.BodyAccelerationJerk-mean-X"                       
* [17] "TimeDomain.BodyAccelerationJerk-mean-Y"                       
* [18] "TimeDomain.BodyAccelerationJerk-mean-Z"                       
* [19] "TimeDomain.BodyAccelerationJerk-std-X"                        
* [20] "TimeDomain.BodyAccelerationJerk-std-Y"                        
* [21] "TimeDomain.BodyAccelerationJerk-std-Z"                        
* [22] "TimeDomain.BodyAngularSpeed-mean-X"                           
* [23] "TimeDomain.BodyAngularSpeed-mean-Y"                           
* [24] "TimeDomain.BodyAngularSpeed-mean-Z"                           
* [25] "TimeDomain.BodyAngularSpeed-std-X"                            
* [26] "TimeDomain.BodyAngularSpeed-std-Y"                            
* [27] "TimeDomain.BodyAngularSpeed-std-Z"                            
* [28] "TimeDomain.BodyAngularAcceleration-mean-X"                    
* [29] "TimeDomain.BodyAngularAcceleration-mean-Y"                    
* [30] "TimeDomain.BodyAngularAcceleration-mean-Z"                    
* [31] "TimeDomain.BodyAngularAcceleration-std-X"                     
* [32] "TimeDomain.BodyAngularAcceleration-std-Y"                     
* [33] "TimeDomain.BodyAngularAcceleration-std-Z"                     
* [34] "TimeDomain.BodyAccelerationMagnitude-mean"                    
* [35] "TimeDomain.BodyAccelerationMagnitude-std"                     
* [36] "TimeDomain.GravityAccelerationMagnitude-mean"                 
* [37] "TimeDomain.GravityAccelerationMagnitude-std"                  
* [38] "TimeDomain.BodyAccelerationJerkMagnitude-mean"                
* [39] "TimeDomain.BodyAccelerationJerkMagnitude-std"                 
* [40] "TimeDomain.BodyAngularSpeedMagnitude-mean"                    
* [41] "TimeDomain.BodyAngularSpeedMagnitude-std"                     
* [42] "TimeDomain.BodyAngularAccelerationMagnitude-mean"             
* [43] "TimeDomain.BodyAngularAccelerationMagnitude-std"              
* [44] "FrequencyDomain.BodyAcceleration-mean-X"                      
* [45] "FrequencyDomain.BodyAcceleration-mean-Y"                      
* [46] "FrequencyDomain.BodyAcceleration-mean-Z"                      
* [47] "FrequencyDomain.BodyAcceleration-std-X"                       
* [48] "FrequencyDomain.BodyAcceleration-std-Y"                       
* [49] "FrequencyDomain.BodyAcceleration-std-Z"                       
* [50] "FrequencyDomain.BodyAcceleration-meanFreq-X"                  
* [51] "FrequencyDomain.BodyAcceleration-meanFreq-Y"                  
* [52] "FrequencyDomain.BodyAcceleration-meanFreq-Z"                  
* [53] "FrequencyDomain.BodyAccelerationJerk-mean-X"                  
* [54] "FrequencyDomain.BodyAccelerationJerk-mean-Y"                  
* [55] "FrequencyDomain.BodyAccelerationJerk-mean-Z"                  
* [56] "FrequencyDomain.BodyAccelerationJerk-std-X"                   
* [57] "FrequencyDomain.BodyAccelerationJerk-std-Y"                   
* [58] "FrequencyDomain.BodyAccelerationJerk-std-Z"                   
* [59] "FrequencyDomain.BodyAccelerationJerk-meanFreq-X"              
* [60] "FrequencyDomain.BodyAccelerationJerk-meanFreq-Y"              
* [61] "FrequencyDomain.BodyAccelerationJerk-meanFreq-Z"              
* [62] "FrequencyDomain.BodyAngularSpeed-mean-X"                      
* [63] "FrequencyDomain.BodyAngularSpeed-mean-Y"                      
* [64] "FrequencyDomain.BodyAngularSpeed-mean-Z"                      
* [65] "FrequencyDomain.BodyAngularSpeed-std-X"                       
* [66] "FrequencyDomain.BodyAngularSpeed-std-Y"                       
* [67] "FrequencyDomain.BodyAngularSpeed-std-Z"                       
* [68] "FrequencyDomain.BodyAngularSpeed-meanFreq-X"                  
* [69] "FrequencyDomain.BodyAngularSpeed-meanFreq-Y"                  
* [70] "FrequencyDomain.BodyAngularSpeed-meanFreq-Z"                  
* [71] "FrequencyDomain.BodyAccelerationMagnitude-mean"               
* [72] "FrequencyDomain.BodyAccelerationMagnitude-std"                
* [73] "FrequencyDomain.BodyAccelerationMagnitude-meanFreq"           
* [74] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude-mean"       
* [75] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude-std"        
* [76] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude-meanFreq"   
* [77] "FrequencyDomain.BodyBodyAngularSpeedMagnitude-mean"           
* [78] "FrequencyDomain.BodyBodyAngularSpeedMagnitude-std"            
* [79] "FrequencyDomain.BodyBodyAngularSpeedMagnitude-meanFreq"       
* [80] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude-mean"    
* [81] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude-std"     
* [82] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude-meanFreq"


## The script run_analysis.R , does the following:
* 1.Merges the training and the test sets to create one data set.
* 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3.Uses descriptive activity names to name the activities in the data set
* 4.Appropriately labels the data set with descriptive variable names. 
* 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
