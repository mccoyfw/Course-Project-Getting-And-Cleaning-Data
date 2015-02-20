# Getting and Cleaning Data Course Project
## Module 3 of the Cousera Data Scientist Specialization


###Author's Environment:
OS version: Windows 7 / R version 3.1.2 (2014-10-31) / Hardware: Lenovo Thinkpad, x64

###Project Overview
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Using data collected from the accelerometers from the Samsung Galaxy S smartphone, I have created an R script called run_analysis.R which merges the different and disparate data sets to create one final, and independent tidy data set.
A full description of the data is available at the site where the data was obtained:[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]( http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Project Contents
In this project you will find the following items:

1. An R script called run_analysis.R:  This script will calculate means per activity, per subject of the mean and Standard deviation of the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]. The required dataset can be downloaded [here.]( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. A Code Book called CodeBook.md: This describes the variables, the data, and any transformations or work that you performed to clean up the data.

3. A Readme file called Readme.md (you are here)

###Required R Packages
The R packages reshape2 and data.table are required. You can install them using the following code:
```
install.package("reshape2")
```
```
install.package("data.table")
```

###An overview of the 'run_analysis.R' Script:


#####How does this script work?
1. The script looks for the project's raw data in the'UCI HAR Dataset' directory. Keep in mind that you are required to store and work with the data locallly.
2. Load the raw data into the R environment.
3. It then combines the raw data into a single data set.
4. The script will then tiday the data set by attaching the appropriate, descriptive labels each column.
5. The script will perform the required mean/standard deviation calculations on the data set to obtain the final "tidy" data set.

#####What Happens after the script is executed?
Once executed, the script will export the final tidy data set to your work directory; the resulting text file will be labeled: "tidy_data.txt"

For more details, please refer to the CookBook.md