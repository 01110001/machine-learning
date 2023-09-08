#Importing the data
library(tidyverse)
library(caret)

#Machine learning library
library(randomForest)
library(xgboost)
library(ggcorrplot)
library(ggridges)




original_data <- read_csv("blackjack.csv")




str(original_data)

#Checking if there is NA.
sum(is.na(original_data))

#Transforming the character into factor for machine learning.

factorme <- function(data){
  for (col in names(data)) {
    if(is.character(data[[col]])) {
      data[[col]] <- factor(data[[col]])
    }
  }
  return(data)
}
#Data wrangling to make win binary
clean_data <- factorme(original_data)

str(clean_data)

#Save the cleaned data to good format.
saveRDS(clean_data, file="clean_data.rds")
















