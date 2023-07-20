#Topic: Discrete Random Variables and Probability Distribution
#Question 3
n <- nrow(yourdata)
p <- mean(yourdata$black == 1)
#Q3.a
ex_black <- n * p
cat("The number of black is expect: " , ex_black)
#Q3.b
num_black <- sum(wage$black == 1)
cat("The number of black: ", num_black )

#Question 4
lambda <- mean(yourdata$educ)
k <- 6
question4_prob <- dpois(k, lambda)
cat("is the probability that he/she has 6 years in education: " , question4_prob)
#Question 5
sample_mean <- mean(yourdata$age)
sample_var <- var(yourdata$age)

barplot(table(yourdata$age), xlab = "Age", ylab = "Frequence")
