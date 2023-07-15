mui <- 6.26
sigma <- 0.44

question6_prob <- pnorm(6, mui, sigma) - pnorm(5, mui, sigma)

IQ <- na.omit(wage$IQ)

mu <- mean(IQ)
sigma2 <- sd(IQ)
n <- 20

# Calculate the standard error of the sample mean

# Find the probability that the sample mean lies in the interval [100, 110]

p <- pnorm(110, mean = mu, sd = sigma2/sqrt(n)) - pnorm(100, mean = mu, sd = sigma2/sqrt(n))

SE <- 1
n <- ceiling((sigma2/SE)^2)

print(p)

