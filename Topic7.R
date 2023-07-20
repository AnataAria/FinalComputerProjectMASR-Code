#Topic 7: Test of Hypotheses for a Single Sample
#Question 15
Q15_TTest <- t.test(yourdata$IQ, mu = 100)
if(Q15_TTest$p.value < 0.1){
  cat("Reject H0: The data provides evidence that the population mean IQ is not equal to 100.");
}else{
  cat("Fail to reject H0: The data does not provide evidence that the population mean IQ is not equal to 100.")
}

#Question 16
Q16_Ttest<-t.test(log(yourdata$lwage), mu = 6, alternative = "greater")
if(Q16_Ttest$p.value < 0.1){
  cat("Reject H0: The data provides evidence that the population mean lwage is not equal to 6.");
}else{
  cat("Fail to reject H0: The data does not provide evidence that the population mean lwage is not equal to 6.")
}

#Question 17

# Set the significance level
alpha <- 0.05

# Calculate the sample proportion
p_hat <- sum(yourdata$exper < 10) / nrow(yourdata)

# Calculate the test statistic
z <- (p_hat - 0.07) / sqrt(0.07 * (1 - 0.07) / nrow(yourdata))

# Calculate the p-value
p_value <- pnorm(z)

# Make a decision based on the p-value
if (p_value < alpha) {
  cat("Reject the null hypothesis. There is evidence to suggest that the proportion of people with less than 10 years of work experience is not more than 0.07.")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that the proportion of people with less than 10 years of work experience is not more than 0.07.")
}

#Question 18

#a)

# Set the significance level
alpha <- 0.01

# Split the data into two groups based on the variable "black"
group1 <- yourdata[yourdata$black == 0, "wage"]
group2 <- yourdata[yourdata$black == 1, "wage"]

# Perform a two-sample t-test
t_test <- t.test(group1, group2)

# Make a decision based on the p-value
if (t_test$p.value < alpha) {
  cat("Reject the null hypothesis. There is evidence to suggest that there is a significant difference between the average wages by the variable 'black'.")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that there is a significant difference between the average wages by the variable 'black'.")
}

#b)

# Set the significance level
alpha <- 0.05
IQ <- na.omit(yourdata$IQ)
filter_data <- yourdata[!is.na(yourdata$IQ),]
# Calculate the sample proportions
p1_hat <- sum(filter_data$black == 0 & filter_data$IQ < 90) / sum(filter_data$black == 0)
p2_hat <- sum(filter_data$black == 1 & filter_data$IQ < 90) / sum(filter_data$black == 1)

# Calculate the pooled proportion
p_hat <- (sum(filter_data$black == 0 & filter_data$IQ < 90) + sum(filter_data$black == 1 & filter_data$IQ < 90)) / nrow(filter_data)

# Calculate the test statistic
z <- (p1_hat - p2_hat) / sqrt(p_hat * (1 - p_hat) * (1 / sum(filter_data$black == 0) + 1 / sum(filter_data$black == 1)))

# Calculate the p-value
p_value <- pnorm(z)

# Make a decision based on the p-value
if (p_value < alpha) {
  cat("Reject the null hypothesis. There is evidence to suggest that there is a significant difference between two independent population proportions of people with low IQ by the variable 'black'.")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that there is a significant difference between two independent population proportions of people with low IQ by the variable 'black'.")
}

#c)

# Set the significance level
alpha <- 0.01

# Split the data into two groups based on the variable "black"
group1 <- yourdata[yourdata$black == 0, "lwage"]
group2 <- yourdata[yourdata$black == 1, "lwage"]

# Calculate the sample variances
s1_squared <- var(group1)
s2_squared <- var(group2)

# Calculate the test statistic
f_statistic <- s1_squared / s2_squared

# Calculate the degrees of freedom
group1
group2

df1 <- nrow(group1) - 1
df2 <- nrow(group2) - 1

# Calculate the p-value
p_value <- pf(f_statistic, df1, df2)

# Make a decision based on the p-value
if (p_value < alpha) {
  cat("Reject the null hypothesis. There is evidence to suggest that there is a significant difference between variances of 'lwage' by variable 'black'.")
} else {
  cat("Do not reject the null hypothesis. There is not enough evidence to suggest that there is a significant difference between variances of 'lwage' by variable 'black'.")
}
