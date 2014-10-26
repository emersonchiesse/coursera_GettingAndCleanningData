
# prepare files
u="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(u,destfile = "data.zip", method="wget")

print("unzipping data... please, wait")
unzip("data.zip")
setwd("UCI HAR Dataset")

# setting variables
fileTrain="train/X_train.txt"
fileTest="test/X_test.txt"

#read files
print ("reading train file...")
train=read.table(fileTrain, header=F)
print ("reading test file...")
test=read.table(fileTest, header=F)

print ("merging data...")
result=merge(train, test)

print ("writing to file result.txt...")
write.table(result, "result.txt", row.name=F)
