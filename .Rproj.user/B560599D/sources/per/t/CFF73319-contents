#machine learning
training_set <- training_set %>% select(c(card1,card2,dealcard1,winloss))
validation_set <- validation_set %>% select(c(card1,card2,dealcard1,winloss))

# Assuming your data is already split into 'training_set' and 'validation_set'

# Model 1 : Multinomial logistic regression
model_multinom <- multinom(winloss ~ . - winloss, data = training_set)

# Predicting on the validation set
pred_probs_multinom <- predict(model_multinom, newdata = validation_set, type = "probs")

# Convert probabilities to categories
result_multinom <- apply(pred_probs_multinom, 1, function(row) {
  levels(training_set$winloss)[which.max(row)]
})

# Generating confusion matrix
confusionMatrix(factor(result_multinom), validation_set$winloss)

#RANDOM FOREST -------------------------------------------
# Train a Random Forest model
set.seed(123)
model_rf <- randomForest(winloss ~ . - winloss, data=training_set, ntree=100, mtry=5, importance=TRUE)

# Predicting on the validation set
result_rf <- predict(model_rf, newdata=validation_set)

# Generating confusion matrix
cm_rf <- confusionMatrix(factor(result_rf), validation_set$winloss)
print(cm_rf)