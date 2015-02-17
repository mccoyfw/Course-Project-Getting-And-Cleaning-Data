setwd("~/UCI HAR Dataset")

install.packages("data.table")
install.packages("reshape2")

library(data.table)
library(reshape2)

# Store all the necessary data into tables.

activity.labels <-read.table("./activity_labels.txt")
features <- read.table("./features.txt")
  
subject.train <- read.table("./train/subject_train.txt")
x.train <- read.table("./train/X_train.txt")
y.train <-  read.table("./train/y_train.txt")

subject.test<- read.table("./test/subject_test.txt")
y.test <- read.table("./test/y_test.txt") 
x.test <- read.table("./test/X_test.txt") 

subject <- rbind(subject.test, subject.train)
colnames(subject) <- "subject"

# Merge the Y test and train datasets then apply relevant labels
mergeY <- rbind(y.train, y.test)
activity <- merge(mergeY, activity.labels, by=1)[,2]

# Merge the X test and train main datasets then apply relevant labels
mergeX <- rbind(x.train, x.test)
colnames(mergeX) <- features[, 2]

# Merge all the things
data <- cbind(subject, activity, mergeX)

# Create a smaller dataset containing only the mean and std variables
search <- grep("-mean|-std", colnames(data))
data.mean.std <- data[,c(1,2,search)]

# Compute the means by subject & label
melted = melt(data.mean.std, id.var = c("subject", "activity"))
means = dcast(melted , subject + activity ~ variable, mean)

# Save the resulting dataset
write.table(means, file="./tidy_data.txt", row.name=FALSE)

# Test output of final dataset
means
