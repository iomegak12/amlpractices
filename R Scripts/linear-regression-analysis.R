height <- c(190,168,175,160,150,200,145,166,177)
weight <- c(80,70,74,68,64,86,62,69,75)

model <- lm(formula = weight ~ height)

newdata <- data.frame(
  height = c(168, 162, 177), stringsAsFactors = FALSE)

predictedWeights = predict(model, newdata)

print(predictedWeights)