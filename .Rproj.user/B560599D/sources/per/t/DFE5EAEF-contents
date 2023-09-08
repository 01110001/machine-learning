#Load the data and splitting the data
clean_data <- readRDS(file="clean_data.rds")

#splitting the data
set.seed(123)
test_index <- createDataPartition(y=clean_data$winloss, times=1,p=0.2,list=FALSE)
training_set <- clean_data[-test_index,]
validation_set <- clean_data[test_index,]
