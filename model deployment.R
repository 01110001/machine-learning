#Model deployment

# Suppose you want to make a prediction using two input variables. 
# For this example, let's say they are 'card1' and 'card2'. 
# You can enter their values like:

card1_value <- 9
card2_value <- 10
dealcard1 <- 8

# Create a data frame with these inputs
new_data <- data.frame(card1 = card1_value, card2 = card2_value, dealcard1 = dealcard1)

# Get predictions
prediction <- predict(model_rf, newdata=new_data)

# Translate factor level to human-readable format
prediction_label <- levels(validation_set$winloss)[prediction]

# Print prediction
cat("The prediction for the given input is:", prediction_label, "\n")

save(model_rf, file="random_forest_model.RData")
