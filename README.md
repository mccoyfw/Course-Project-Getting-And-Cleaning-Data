# Getting and Cleaning Data Course Project
## Module 3 of the Cousera Data Scientist Specialization


###Author's environment:
OS version: Windows 7 / R version 3.1.2 (2014-10-31) / Hardware: Lenovo Thinkpad, x64

###Project Contents
In this project you will find the following items:

1. An R script called run_analysis.R:  This script will calculate means per activity, per subject of the mean and Standard deviation of the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]. The required dataset can be downloaded [here.]( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. A Code Book called CodeBook.md: This describes the variables, the data, and any transformations or work that you performed to clean up the data called

3. A Readme file called Readme.md (you are here)

###Required R Packages
The R package reshape2 and data.table are required. You can install them using the following code:
```
install.package("reshape2")
```
```
install.package("data.table")
```

###An overview of the 'run_analysis.R' Script:

#####What does this script do?

#####How does this script do it?
1. The script looks for the project's raw data in the current directory, if it either finds the zip file 'getdata-projectfiles-UCI HAR Dataset.zip' or the 'UCI HAR Dataset' directory, it assumes you have the raw data locally and uses it, if not it attempts to download the data from the project data source mentioned in Project_instructions.txt file or the Coursera web page for the project.
2. Load the raw data files into the programming environment.
3. Combine segregated raw data into an exhaustive combined data set.
4. Attach appropriate descriptive labels to columns.
5. Perform computations on the data set to obtain the desired tidy data set.

#####What Happens after the script is executed?
Once executed, the resulting dataset maybe found at . /tidy_data.txt

For more details, please refer to the CookBook.md