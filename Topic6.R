#Topic 6:Statistical Intervals for a Single Sample
#Question 10
n <- 30 # sample size
sigma <- 0.44 # standard deviation
alpha <- 0.05 # significance level
z <- qnorm(1-alpha/2) # z-score for 95% confidence interval
mean(wage$lwage) - z * sigma / sqrt(n)
mean(wage$lwage) + z * sigma / sqrt(n)
#Question 11
t.test(wage$IQ, conf.level = 0.96)

#Question 12
n <- (qnorm(1 - (0.05 / 2)) * 0.44 / 0.2) ^ 2
cat("The sample size should use: ", n)
#Q13 
# Calculate the sample proportion
p_hat <- mean(yourdata$nearc4)
# Calculate the standard error
n <- nrow(yourdata)
SE <- sqrt(p_hat * (1 - p_hat) / n)
# Calculate the z-score for a 99% confidence interval
z <- qnorm(0.995)
# Calculate the margin of error
ME <- z * SE
# Calculate the confidence interval
lower <- p_hat - ME
upper <- p_hat + ME
# Display the results
cat("The 99% confidence interval for the true proportion of all people who are near a 4-year college is (", lower, ", ", upper, ")\n")

#Q14

#n = (z a/2 * ơ / E)^ 2 
#z a/2 ^ 2= z^ 2 * p(1-p) 
#n = z^2 / E^2 * p * (1-p)

#Calculate p
p <- 0.5
#Calculate E
E <- 0.01
# Calculate the z-score for a 99% confidence interval
z <- qnorm(0.995)
# Calculate n
n <- z^2 * p * (1-p) / E^2
cat("The sample size should use: ", n)


