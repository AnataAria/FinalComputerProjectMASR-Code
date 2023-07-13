id<- 501	# Your ID: SE140459  id <- 459
set.seed(id)
yourdata<-wage[sample(1:nrow(wage),30),]

#Question 1
N <- nrow(wage)
K <- sum(wage$black == 1)

n <- 30
k <- 6
question1_prob = dhyper(k,K, N - K, n)

#Question 2

p <- mean(yourdata$black == 1)
n <- 5
prob2 <- 1 - dbinom(0,n,p)

