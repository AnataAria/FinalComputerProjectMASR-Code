#Topic 8: Simple Linear Regression and Correlation
#Question 19
fit <- lm(wage ~ educ, data = yourdata)
summary_fit <- summary(fit)

intercept <- coef(fit)[1]
slope <- coef(fit)[2]

cat("The intercept is", intercept, "\n")
cat("The slope is", slope, "\n")

p_value <- summary_fit$fstatistic[3]
if (p_value < 0.10) {
  cat("The p-value is", p_value, "which is less than 0.10. We reject the null hypothesis that there is no relationship between educ and wage.\n")
} else {
  cat("The p-value is", p_value, "which is greater than or equal to 0.10. We do not have enough evidence to reject the null hypothesis that there is no relationship between educ and wage.\n")
}

r_squared <- summary_fit$r.squared

cat("The R-squared value is", r_squared, "\n")


if (p_value < 0.10) {
  cat("The p-value is", p_value, "which is less than 0.10. We reject the null hypothesis that there is no relationship between educ and wage.\n")
} else {
  cat("The p-value is", p_value, "which is greater than or equal to 0.10. We do not have enough evidence to reject the null hypothesis that there is no relationship between educ and wage.\n")
}


#Question 20
fit1 <- lm(wage ~ educ, data = yourdata)
fit2 <- lm(lwage ~ educ, data = yourdata)

summary(fit1)$r.squared
summary(fit2)$r.squared
