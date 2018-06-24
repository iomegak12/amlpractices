print(head(mtcars, n = 5))

dataset <- mtcars[, c('am', 'cyl', 'hp', 'wt')]

model <- glm(formula = am ~ (cyl + hp + wt),
             data = dataset, 
             family = 'binomial')

model.summary <- summary(model)

print(model.summary)

