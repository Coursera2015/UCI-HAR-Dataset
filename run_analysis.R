run_analysis <- function(){
  
##Getting data
  
  #Labels
  a_labels  <- read.table("data/activity_labels.txt", 
                          stringsAsFactors=FALSE)  
  features  <- read.table("data/features.txt", 
                          stringsAsFactors=FALSE)
  
  #Data test
  s_test   <- read.table("data/subject_test.txt", 
                         col.names = "subject", stringsAsFactors=FALSE)
  y_test   <- read.table("data/y_test.txt", 
                         col.names = "action", stringsAsFactors=FALSE)
  x_test   <- read.table("data/X_test.txt", 
                         col.names = features$V2, stringsAsFactors=FALSE)
  test     <- cbind(s_test, y_test, x_test)
  
  #Data train
  s_train   <- read.table("data/subject_train.txt", 
                          col.names = "subject", stringsAsFactors=FALSE)
  y_train   <- read.table("data/y_train.txt", 
                          col.names = "action", stringsAsFactors=FALSE)
  x_train   <- read.table("data/X_train.txt", 
                          col.names = features$V2, stringsAsFactors=FALSE)    
  train     <- cbind(s_train, y_train, x_train) 
  
##Working with data

  #Making complete dataset
  data_all <- rbind(test, train)
  
  #Recode activity values
  for(i in 1:6){
    data_all$action[data_all$action == i] <- a_labels[i, 2]    
  }
  
  #Chose list of necessary columns
  sub <- c(1, 2, (grep("mean\\(\\)|std\\(\\)", features[, 2], value = FALSE)) + 2)
  
  #Create a new subset with necessary columns
  data_sub <- subset(data_all, select = sub)

  #Clean names of the dataset
  nm <- gsub("BodyBody", "Body", names(data_sub), ignore.case = FALSE)
  nm <- gsub("\\(", "", nm)
  nm <- gsub("\\)", "", nm)
  nm <- gsub("-", "", nm)
  nm <- gsub("...", "_", nm, fixed = TRUE)
  nm <- gsub("..", "_", nm, fixed = TRUE)
  nm <- gsub(".", "_", nm, fixed = TRUE)
  nm <- gsub("std_", "Std", nm)
  nm <- gsub("mean_", "Mean", nm)  
  
  #Rename names of data.frame
  names(data_sub) <- nm
  
  #Create list of subjects
  subject_list <- split(data_sub, data_sub$subject)
  
  #Loop list of subjects and actions
  fin <- vector() #vector for result dataset
  for(i in 1:30){
  subject_data <- as.data.frame(subject_list[i])
    action_list  <- split(subject_data, subject_data[2])   
      for(m in 1:6){
        action_data <- as.data.frame(action_list[m])
        action_mean <- colMeans(action_data[3:ncol(action_data)])
        action <- c(i, action_data[1,2], action_mean)
        fin <- rbind(fin, action, deparse.level = 0)   
      }  
  }
  fin <- as.data.frame(fin)
  names(fin) <- nm
  
  #Write tidy dataset to file data_fin.txt
  write.table(fin, file = "data_fin.txt", sep = ";", row.name=FALSE)  
}


