##Data source

The raw data is the UCI Human Activity Recognition dataset. The full description provided by UCI can be found [here]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiment was described as:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) ...  [they] captured 3-axial linear acceleration and 3-axial angular velocity
The data was then normalized and bounded within [-1,1].

The data that results afte running the analysis script results in 180 observations of 88 variables. 
Each of the 30 participants performed one of six activities:
-Laying
-Sitting
-Standing
-Walking
-Walking Downstairs
-Walking Upstairs

Each row in the data is the average of all the readings for a particular Subject doing a specific Activity. The Subjects are denoted by number. 
The first two columns are the Activity, followed by the Subject. The remaining columns are the readings. 

The readings retain their original titles from the experiment with an adjustment for uniqueness. 


