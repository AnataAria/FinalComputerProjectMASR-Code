id<- 501	# Your ID: SE140459  id <- 459
set.seed(id)
yourdata<-wage[sample(1:nrow(wage),30),]

#question 10

n <- 30 # sample size
sigma <- 0.44 # standard deviation
alpha <- 0.05 # significance level
z <- qnorm(1-alpha/2) # z-score for 95% confidence interval
mean(wage$lwage) - z * sigma / sqrt(n)
mean(wage$lwage) + z * sigma / sqrt(n)


#question 11
t.test(wage$IQ, conf.level = 0.96)

#question 12
n <- (qnorm(1 - (0.05 / 2)) * 0.44 / 0.2) ^ 2
n



