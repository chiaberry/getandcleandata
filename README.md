# getandcleandata
This is a repository for the Course Project for the Coursera online class "Getting and Cleaning Data"

## Course Project

This project uses raw data provided by the University of California Irvine's Center for Machine Learning and Intelligent Systems. (http://cml.ics.uci.edu/) Data was collected from subjects performing a variety of activities while wearing Samsung Galaxy smartphones equipped with accelerometers. More details regarding the data can be found in the codebook in this same respository. 

#### Running the Script

There is a script in the repository titled "run_analysis.R". The script merges the raw data into a cohesive data frame, selects only the mean and standard deviation data and then results in a data frame of averages for said data by activity and subject. The script assumes the raw data has already been downloaed. The raw data can be found in a zip file  [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), it must be unzipped for the script to work. 

The script makes use of the pacakge "dplyr". It loads the package but **does not** install the package.  

