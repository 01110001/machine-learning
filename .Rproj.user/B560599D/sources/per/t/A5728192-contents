#Data visualization part
str(training_set)

#Just a quick summary
summary(training_set)


# For example, visualize the distribution of `sumofcards` for player :
p1 <- ggplot(training_set, aes(x=sumofcards)) + 
  geom_histogram(binwidth=1, fill="blue", color="white", alpha=0.7) + 
  theme_minimal() +
  labs(title="Distribution of sumofcards", x="Sum of Cards", y="Frequency")




# For example, visualize the distribution of `sumofdealer` for player :
p2 <- ggplot(training_set, aes(x=sumofdeal)) + 
  geom_histogram(binwidth=1, fill="red", color="white", alpha=0.7) + 
  theme_minimal() +
  labs(title="Distribution of sumofcards", x="Sum of Cards", y="Frequency")


#Plot the distribution side by side
# Display side by side
grid.arrange(p1, p2, ncol=2)

str(clean_data)


# For example, for `winloss`:
ggplot(training_set, aes(x=winloss)) + 
  geom_bar(fill="green", alpha=0.7) + 
  theme_minimal() +
  labs(title="Distribution of winloss", x="Win/Loss", y="Count")


#Distribution of plybustbeat
p3 <- ggplot(training_set, aes(x=plybustbeat)) + 
  geom_bar(fill="green", alpha=0.7) + 
  theme_minimal() +
  labs(title="Distribution of winloss", x="Win/Loss", y="Count")

#Distribution of dealer bust
p4 <- ggplot(training_set, aes(x=dlbustbeat)) + 
  geom_bar(fill="green", alpha=0.7) + 
  theme_minimal() +
  labs(title="Distribution of winloss", x="Win/Loss", y="Count")

grid.arrange(p3, p4, ncol=1)

#Correlation analysis
non_numeric_vars <- names(numeric_vars)[sapply(numeric_vars, function(col) !is.numeric(col))]
numeric_vars <- numeric_vars[ , !(names(numeric_vars) %in% non_numeric_vars)]
cor_matrix <- cor(numeric_vars, use="complete.obs")

corrplot(cor_matrix, method="circle")


# For example, the relationship between `sumofcards` and `winloss`:
ggplot(training_set, aes(x=sumofcards, fill=winloss)) + 
  geom_histogram(binwidth=1, position="dodge", alpha=0.7) + 
  theme_minimal() +
  labs(title="Relationship between sumofcards and winloss", x="Sum of Cards", y="Frequency")


ggplot(training_set, aes(y=sumofcards)) + 
  geom_boxplot(fill="red", alpha=0.7) + 
  theme_minimal() +
  labs(title="Boxplot of sumofcards", y="Sum of Cards")


par(mfrow=c(2,2))  # This will create a 2x2 grid for plots
hist(training_set$card1, main="Distribution of Card1", xlab="Card1 Value", col="skyblue")
hist(training_set$card2, main="Distribution of Card2", xlab="Card2 Value", col="salmon")
hist(training_set$sumofcards, main="Distribution of Sum of Cards", xlab="Sum Value", col="lightgreen")
hist(training_set$plwinamt, main="Distribution of Player Win Amount", xlab="Win Amount", col="gold")



ggplot(training_set, aes(x=sumofcards, y=plwinamt, size=dlwinamt)) + 
  geom_point(aes(color=winloss), alpha=0.6) +
  labs(title="Bubble Plot: Sum of Cards vs Player Win Amount, Size by Dealer Win Amount") +
  theme_minimal() +
  scale_size_continuous(range=c(1,15))








