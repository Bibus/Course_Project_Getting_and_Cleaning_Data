library("dplyr")

#read and merge raw data
y_test <- read.table(".\\test\\y_test.txt")
y_train <- read.table(".\\train\\y_train.txt")
y_tot <- rbind(y_test, y_train)

x_test <- read.table(".\\test\\x_test.txt")
x_train <- read.table(".\\train\\x_train.txt")
x_tot <- rbind(x_test, x_train)

subject_test <- read.table(".\\test\\subject_test.txt")
subject_train <- read.table(".\\train\\subject_train.txt")
subject_tot <- rbind(subject_test, subject_train)

#limit data frame to means and standard deviations and name features
ind <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,201,202,203,204,205,206,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504)
feat_lab_all <- read.table("features.txt", stringsAsFactors = FALSE)
feat_lab <- make.names(as.character(feat_lab_all$V2[ind]))
x_red <- x_tot[,ind]
names(x_red) =  feat_lab

#add activity and subject number as a feature
activities <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
x_red$activity = activities[y_tot[,1]]
x_red$subject = subject_tot[,1]

#group data by activity and subject (using dplyr package)
x_grouped <- group_by(x_red, activity, subject)

#calculate average of the features per activity and subject and write it to TidyData.txt
Sum <- summarise_each(tem, funs(mean))
write.table(Sum,"TidyData.txt", row.name = FALSE)