# Merge the train and test values x 
train_table_x <- read.table(file = "UCI HAR Dataset/train/X_train.txt")
test_table_x <- read.table(file = "UCI HAR Dataset/test/x_test.txt")
whole_table_x <- rbind(train_table_x,test_table_x)

# Merge the train and test values subject
train_table_subject <- read.table(file = "UCI HAR Dataset/train/subject_train.txt")
test_table_subject <- read.table(file = "UCI HAR Dataset/test/subject_test.txt")
whole_table_subject <- rbind(train_table_subject,test_table_subject)

# Merge the train and test values y
train_table_y <- read.table(file = "UCI HAR Dataset/train/y_train.txt")
test_table_y <- read.table(file = "UCI HAR Dataset/test/y_test.txt")
whole_table_y <- rbind(train_table_y,test_table_y)
# Set the activities names
activities <- read.table(file = "UCI HAR Dataset/activity_labels.txt")
whole_table_y_activities <- merge(x=whole_table_y,activities,by.x="V1",by.y="V1")
whole_table_y_activities <- whole_table_y_activities[,-1]
# Merge x with y values
whole_table <- cbind(whole_table_x,whole_table_subject,whole_table_y_activities) 


# Find the columns with mean and std
features_file <- read.table(file = "UCI HAR Dataset/features.txt")
right_columns <- which(grepl("mean|std",features_file[,2],fixed = FALSE))
right_names <- c(as.character(features_file[right_columns,2]))
table_labels <- c("Activity","Subject",right_names)


# Table with mean and std values only -> END OF STEP 4
reduced_table <- whole_table[,c(length(whole_table),(length(whole_table)-1),right_columns)]
colnames(reduced_table) <- table_labels

# STEP 5
melted_data <- dcast(melt_reduced_table,Activity + Subject ~ variable,mean)
