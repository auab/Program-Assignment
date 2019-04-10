# Code book of project data

## Source
The data can be downloaded in: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and is obtained from the project detailed in 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Description of data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Variables contained in input file
For each record in the dataset it is provided: 
* Item Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Item Triaxial Angular velocity from the gyroscope. 
* Item A 561-feature vector with time and frequency domain variables. 
* Item Activity label. 
* Item An identifier of the subject who carried out the experiment.

## Modifications in data

* Item Train and test set were merged together
* Item The activity ID was changed by activity label
* Item The columns with the subject number, the activity label and the ones containing "mean" or "std" values were manteied, the other were removed from the set
* Item Proper names were given to the columns
* Item Avearage of each variable measured for each activity and for each subject was computed and the data presented in a table
* Item The data was saved in a txt file
