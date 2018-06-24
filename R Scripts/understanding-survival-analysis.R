install.packages('survival')
library('survival')

print(head(pbc, no = 10))
dataset <- pbc[, c('time', 'status')]
survivalformula <- Surv(dataset$time, dataset$status == 2) ~ 1
fit <- survfit(formula = survivalformula)

plot(fit)
summary(fit)
