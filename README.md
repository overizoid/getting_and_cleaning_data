# getting_and_cleaning_data

---------------------
Getting and Cleaning Data Final Course Project
---------------------

Using the data from accelerometers on smartphones provided, the data was cleaned up into a compact dataset that only includes mean and std (standard deviation) data. 

The function that did the cleaning was the run_analysis() function made by myself.

It first analyzes and orders the data of both the training and testing set by the subject ID, the activity, and then the activity signal data.

After that is complete, the analysis function then merges the training and testing set together.

The run_analysis function also includes optional debug code to help make sure the data is being properly analyzed.

After the run_analysis function completes the analysis it presents the mean of the data ordered by the subject's ID and the specific activity that they completed.
