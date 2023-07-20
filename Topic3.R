#Topic 3:Continuous Random Variables and Probability Distribution
#Question 6
mui <- 6.26
sigma <- 0.44

question6_prob <- pnorm(6, mui, sigma) - pnorm(5, mui, sigma)
cat("The probability P(5 < lwage < 6): ", question6_prob)
#Question 7
#Question 7a
IQ <- na.omit(wage$IQ)

mu <- mean(IQ)
sigma2 <- sd(IQ)
n <- 20

# Calculate the standard error of the sample mean

# Find the probability that the sample mean lies in the interval [100, 110]

p <- pnorm(110, mean = mu, sd = sigma2/sqrt(n)) - pnorm(100, mean = mu, sd = sigma2/sqrt(n))
cat("The probability that the sample mean of IQ lies in [100, 110]", p)
#Question 7b
SE <- 1
n <- ceiling((sigma2/SE)^2)
cat("The large must the random sample be: ", p)

