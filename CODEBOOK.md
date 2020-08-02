# The Analysis Codebook

The data provided for this project comes from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data provided is data from the accelerometers of smartphones owned by the subjects provided.

The script created is "run_anaylsis.R".

Input data required for run_analysis function:

- x_tr_path: the path in which the X_train file is located.
- y_tr_path: the path in which the Y_train file is located.
- sub_tr: the path in which the subject_train file is located.
- x_te_path: the path in which the X_test file is located.
- y_te_path: the path in which the Y_test file is located.
- sub_te: the path in which the subject_test file is located.
- act_labels: the path in which the activity_labels file is located.
- ftrs: the path in which the features file is located.

All files must be text files in form of a readable table.

## Upon completion of the anaylsis the final data will be in the form of a table such as this:

### Columns 1 - 2:
- Subject ID: The ID's of the subjects ranging from 1 to 30.
- Activity: The activity performed, ranges from 6 different activities. (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

### Columns 3 - 563:
- Accelerometer Data: The mean() and std() data provided from the accelerometers.
- **The specific columns are:** \
  tBodyAcc-mean()-X               tBodyAcc-mean()-Y              
  tBodyAcc-mean()-Z               tBodyAcc-std()-X               
  tBodyAcc-std()-Y                tBodyAcc-std()-Z               
  tGravityAcc-mean()-X            tGravityAcc-mean()-Y           
  tGravityAcc-mean()-Z            tGravityAcc-std()-X            
  tGravityAcc-std()-Y             tGravityAcc-std()-Z            
  tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y          
  tBodyAccJerk-mean()-Z           tBodyAccJerk-std()-X           
  tBodyAccJerk-std()-Y            tBodyAccJerk-std()-Z           
  tBodyGyro-mean()-X              tBodyGyro-mean()-Y             
  tBodyGyro-mean()-Z              tBodyGyro-std()-X              
  tBodyGyro-std()-Y               tBodyGyro-std()-Z              
  tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y         
  tBodyGyroJerk-mean()-Z          tBodyGyroJerk-std()-X          
  tBodyGyroJerk-std()-Y           tBodyGyroJerk-std()-Z          
  tBodyAccMag-mean()              tBodyAccMag-std()              
  tGravityAccMag-mean()           tGravityAccMag-std()           
  tBodyAccJerkMag-mean()          tBodyAccJerkMag-std()          
  tBodyGyroMag-mean()             tBodyGyroMag-std()             
  tBodyGyroJerkMag-mean()         tBodyGyroJerkMag-std()         
  fBodyAcc-mean()-X               fBodyAcc-mean()-Y              
  fBodyAcc-mean()-Z               fBodyAcc-std()-X               
  fBodyAcc-std()-Y                fBodyAcc-std()-Z               
  fBodyAcc-meanFreq()-X           fBodyAcc-meanFreq()-Y          
  fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X          
  fBodyAccJerk-mean()-Y           fBodyAccJerk-mean()-Z          
  fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y           
  fBodyAccJerk-std()-Z            fBodyAccJerk-meanFreq()-X      
  fBodyAccJerk-meanFreq()-Y       fBodyAccJerk-meanFreq()-Z      
  fBodyGyro-mean()-X              fBodyGyro-mean()-Y             
  fBodyGyro-mean()-Z              fBodyGyro-std()-X              
  fBodyGyro-std()-Y               fBodyGyro-std()-Z              
  fBodyGyro-meanFreq()-X          fBodyGyro-meanFreq()-Y         
  fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()             
  fBodyAccMag-std()               fBodyAccMag-meanFreq()         
  fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-std()      
  fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-mean()        
  fBodyBodyGyroMag-std()          fBodyBodyGyroMag-meanFreq()    
  fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMag-std()     
  fBodyBodyGyroJerkMag-meanFreq()
  
  Note: All of the data above is in a range of [-1,1].
  
The function will also summarise the means of all of the data according to the subject ID and activity.
