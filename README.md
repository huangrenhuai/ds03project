# README.md

Instructions to use run_analysis.R:
> setwd("/path/to/working/directory/") # set up the working directory
> source("run_analysis.R")
Then you can run all the command in one single step. 
> runall()
Or you can run step by step:

# follow the step by step instruction:

> getData()      # First download and unzip the data to local driver if you didn't do so. You only need do it once.
> loadData()     # load data to memory
> cleanLabels()  # clean up the lables that are originally from 
> mergeData()    # merge test and train data. 
> extractData()  # extract only the mean and std data
> tidyData()     # clean up the data
> analyseData()  # aggregate the data according "subject" and "activity" 
> writeData(filename) # you can change the filename.
> head(tidy2)
")
 
Read the comment line in the script  "run_analysis.R" for more detail.  

Notes:
The script is wroten on Fedora 20, so you should be able to run it in Linux system. 
But if you are using a Windows PC, you may need to change the path format using"\\".
