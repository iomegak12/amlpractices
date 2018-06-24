height <- c(172,190,180,167,165,150,187,192,189,155)
weight <- c(68,76,70,65,65,57,75,78,77,59)

model <- lm(formula = weight ~ height)

newdata <- data.frame(
  height = c(168, 162, 177), stringsAsFactors = FALSE)

predictedWeights = predict(model, newdata)

print(predictedWeights)