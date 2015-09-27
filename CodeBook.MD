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

