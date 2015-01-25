##Codebook
####Author: Coursera2015 (Getting and cleaning data, January 2015)
*****
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. These are:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files.

1. Data:

- features.txt: List of all features.

- activity_labels.txt: Links the class labels with their activity name.

- data/X_train.txt: Training set.

- data/y_train.txt: Training labels.

- data/X_test.txt: Test set.

- data/y_test.txt: Test labels.

- data/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- data/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

2. R script and additional files:

- README.md

- Codebook.md: Explains variables and data preparation.

- run_analysis.R: File contains R script that analyses data. It writes output to file `data_fin.txt`. Separator is `;`.

Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

####About data:
Initial dataset is prepared by:  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit? degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
[www.smartlab.ws](www.smartlab.ws)

###Varibles
1. `subject`: Volonteers
2. `action`: Types of activity
3. `tBodyAcc_MeanX`: Mean value of X. Signals come from accelerometer (Time domain signals, body acceleration signals)
4. `tBodyAcc_MeanY`: Mean value of Y. Signals come from accelerometer (Time domain signals, body acceleration signals)
5. `tBodyAcc_MeanZ`: Mean value of Z. Signals come from accelerometer (Time domain signals, body acceleration signals)
6. `tBodyAcc_StdX`: Standard deviation of X. Signals come from accelerometer (Time domain signals, body acceleration signals)
7. `tBodyAcc_StdY`: Standard deviation of Y. Signals come from accelerometer (Time domain signals, body acceleration signals)
8. `tBodyAcc_StdZ`: Standard deviation of Z. Signals come from accelerometer (Time domain signals, body acceleration signals)
9. `tGravityAcc_MeanX`: Mean value of X. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
10. `tGravityAcc_MeanY`: Mean value of Y. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
11. `tGravityAcc_MeanZ`: Mean value of Z. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
12. `tGravityAcc_StdX`: Standard deviation of X. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
13. `tGravityAcc_StdY`: Standard deviation of Y. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
14. `tGravityAcc_StdZ`: Standard deviation of Z. Signals come from accelerometer (Time domain signals, gravity acceleration signals)
15. `tBodyAccJerk_MeanX`: Mean value of X. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
16. `tBodyAccJerk_MeanY`: Mean value of Y. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
17. `tBodyAccJerk_MeanZ`: Mean value of Z. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
18. `tBodyAccJerk_StdX`: Standard deviation of X. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
19. `tBodyAccJerk_StdY`: Standard deviation of Y. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
20. `tBodyAccJerk_StdZ`: Standard deviation of Z. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals)
21. `tBodyGyro_MeanX`: Mean value of X. Signals come from gyroscope (Time domain signals, body acceleration signals)
22. `tBodyGyro_MeanY`: Mean value of Y. Signals come from gyroscope (Time domain signals, body acceleration signals)
23. `tBodyGyro_MeanZ`: Mean value of Z. Signals come from gyroscope (Time domain signals, body acceleration signals)
24. `tBodyGyro_StdX`: Standard deviation of X. Signals come from gyroscope (Time domain signals, body acceleration signals)
25. `tBodyGyro_StdY`: Standard deviation of Y. Signals come from gyroscope (Time domain signals, body acceleration signals)
26. `tBodyGyro_StdZ`: Standard deviation of Z. Signals come from gyroscope (Time domain signals, body acceleration signals)
27. `tBodyGyroJerk_MeanX`: Mean value of X. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
28. `tBodyGyroJerk_MeanY`: Mean value of Y. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
29. `tBodyGyroJerk_MeanZ`: Mean value of Z. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
30. `tBodyGyroJerk_StdX`: Standard deviation of X. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
31. `tBodyGyroJerk_StdY`: Standard deviation of Y. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
32. `tBodyGyroJerk_StdZ`: Standard deviation of Z. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals)
33. `tBodyAccMag_Mean`: Mean value. Signals come from accelerometer (Time domain signals, body acceleration signals, Magnitude of signals)
34. `tBodyAccMag_Std`: Standard deviation. Signals come from accelerometer (Time domain signals, body acceleration signals, Magnitude of signals)
35. `tGravityAccMag_Mean`: Mean value. Signals come from accelerometer (Time domain signals, gravity acceleration signals, Magnitude of signals)
36. `tGravityAccMag_Std`: Standard deviation. Signals come from accelerometer (Time domain signals, gravity acceleration signals, Magnitude of signals)
37. `tBodyAccJerkMag_Mean`: Mean value. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals and Magnitude of signals)
38. `tBodyAccJerkMag_Std`: Standard deviation. Signals come from accelerometer (Time domain signals, body acceleration signals, Jerk signals and Magnitude of signals)
39. `tBodyGyroMag_Mean`: Mean value. Signals come from gyroscope (Time domain signals, body acceleration signals, Magnitude of signals)
40. `tBodyGyroMag_Std`: Standard deviation. Signals come from gyroscope (Time domain signals, body acceleration signals, Magnitude of signals)
41. `tBodyGyroJerkMag_Mean`: Mean value. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals and Magnitude of signals)
42. `tBodyGyroJerkMag_Std`: Standard deviation. Signals come from gyroscope (Time domain signals, body acceleration signals, Jerk signals and Magnitude of signals)
43. `fBodyAcc_MeanX`: Mean value of X. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
44. `fBodyAcc_MeanY`: Mean value of Y. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
45. `fBodyAcc_MeanZ`: Mean value of Z. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
46. `fBodyAcc_StdX`: Standard deviation of X. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
47. `fBodyAcc_StdY`: Standard deviation of Y. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
48. `fBodyAcc_StdZ`: Standard deviation of Z. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals)
49. `fBodyAccJerk_MeanX`: Mean value of X. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
50. `fBodyAccJerk_MeanY`: Mean value of Y. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
51. `fBodyAccJerk_MeanZ`: Mean value of Z. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
52. `fBodyAccJerk_StdX`: Standard deviation of X. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
53. `fBodyAccJerk_StdY`: Standard deviation of Y. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
54. `fBodyAccJerk_StdZ`: Standard deviation of Z. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals)
55. `fBodyGyro_MeanX`: Mean value of X. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
56. `fBodyGyro_MeanY`: Mean value of Y. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
57. `fBodyGyro_MeanZ`: Mean value of Z. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
58. `fBodyGyro_StdX`: Standard deviation of X. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
59. `fBodyGyro_StdY`: Standard deviation of Y. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
60. `fBodyGyro_StdZ`: Standard deviation of Z. Signals come from gyroscope (Fast Fourier Transform (FFT) signals, body acceleration signals)
61. `fBodyAccMag_Mean`: Mean value. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Magnitude of signals)
62. `fBodyAccMag_Std`: Standard deviation. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Magnitude of signals)
63. `fBodyAccJerkMag_Mean`: Mean value. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals and Magnitude of signals)
64. `fBodyAccJerkMag_Std`: Standard deviation. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals and Magnitude of signals)
65. `fBodyGyroMag_Mean`: Mean value. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Magnitude of signals)
66. `fBodyGyroMag_Std`: Standard deviation. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Magnitude of signals)
67. `fBodyGyroJerkMag_Mean`: Mean value. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals and Magnitude of signals)
68. `fBodyGyroJerkMag_Std `: Standard deviation. Signals come from accelerometer (Fast Fourier Transform (FFT) signals, body acceleration signals, Jerk signals and Magnitude of signals)

###Data preparation. Script `run_analysis.R`:
1. Merges data from files: features.txt, activity_labels.txt, data/X_train.txt, data/y_train.txt, data/X_test.txt, data/y_test.txt.
2. Extracts only the measurements on the mean and standard deviation for each measurement (mean() and std()). 
3. Labels data set with approprieate variable names.
4. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
