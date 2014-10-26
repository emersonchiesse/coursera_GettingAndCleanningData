

#u="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(u,destfile = "d.zip", method="wget")

#print("unzipping data... please, wait")
#unzip("d.zip")
#setwd("UCI HAR Dataset")

# setting variables
fileTrain="train/X_train.txt"
fileTest="test/X_test.txt"

#read files
print ("reading train file...")
train=read.table(fileTrain, header=F)
print ("reading test file...")
test=read.table(fileTest, header=F)

#data=merge(train, test)
