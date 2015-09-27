### WHAT HAS BEEND ONE IN THE CODE
(Not Necessarily in the Same Order)

1. Each of the Required Data into Data Frames ie., Sensor Signals, Feature List and Activity List
2. Sensor Data has been merged into a Single Data Frame using the RBind Function - Number of Colums in both are same
3. Features Data Frame is the Header Information for the 561 Columns in the Sensor Data Frame
4. Sensor Frame Headers = Features Data 
5. Activity and Subject Headers are given their respective names 

As part of the Objective, only the Mean and Std Deviation Features have been extracted as a separte Data Set

1. The Sensor Data is Merged with the Activity and Subject Data Frames using CBind to create a Single Data Frame
2. Mean of each Activity and Subject is computed and stored in a separate Data Set
3. The Above Data Set is then written back to a Txt File

The Code File - run_analysis.R - contains information on each of the steps carried out

### VARIABLES USED

X_Test - Data Frame for storing x_test.txt
Y_Test - Data Frame for storing y_test.txt
Subject_Test - Data Frame for storing subject_test.txt

X_Train - Data Frame for storing x_train.txt
Y_Train - Data Frame for storing y_train.txt
Subject_Train - Data Frame for storing subject_train.txt

x_dataset - By Binding X_Test and X_Train
y_dataset - By Binding Y_Test and X_Train
s_dataset - By Binding S_Test and S_Train

the_features - Data Frame from features.txt
the_activities - Data Frame from activities.txt

meanstd_cols - the column numbers from Features,txt which has mean and std 
desired_set - using the meanstd_cols pick up the data set from x_dataset
names(desired_set) - assigns the headers to the desired set

completedata - merge all 3 data sets ie., desired_set, y_dataset, s_dataset

numcolwise(mean) is a plyr function to calculate the mean of the columns in a dataframe


