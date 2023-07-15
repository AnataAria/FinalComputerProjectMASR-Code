id<- 501	# Your ID: SE140459  id <- 459
set.seed(id)
yourdata<-wage[sample(1:nrow(wage),30),]

#Question 9

mean(wage$age)
var(wage$age)
