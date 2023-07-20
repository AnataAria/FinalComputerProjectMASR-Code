#Topic 5: Sampling Distributions and Point Estimation of Paramaters
#Question 9
IQ <- na.omit(wage$IQ)
question9_mean<-mean(IQ)
question9_var<-var(IQ)
cat("The point estimation of mean and variance of IQ: \n mean: ", question9_mean, "\n var:  ", question9_var)
