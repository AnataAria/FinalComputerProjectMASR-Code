mui <- 6.26
sigma <- 0.44

question6_prob <- pnorm(6, mui, sigma) - pnorm(5, mui, sigma)

IQ <- wage$IQ

mu <- mean(IQ)
sigma2 <- var(IQ)
n <- 20

# Calculate the standard error of the sample mean
se <- sqrt(sigma2 / n)

# Find the probability that the sample mean lies in the interval [100, 110]
p <- pnorm((110 - mu) / se) - pnorm((100 - mu) / se)

# Find the sample size required for the standard error to be equal to 1
n_required <- sigma2

# Print the results
cat("The probability that the sample mean lies in the interval [100, 110] is", p, "\n")
cat("The required sample size for the standard error to be equal to 1 is", n_required)
