mtdata <- mtcars[, c('mpg', 'disp', 'hp', 'wt')]

model <- lm(
  formula = mpg ~ (disp + hp + wt),
  data = mtdata)

coeffs <- coef(model)

allvarscoeff <- coeffs[1]
dispcoeff <- coeffs[2]
hpcoeff <- coeffs[3]
wtcoeff <- coeffs[4]

newdisp <- 167
newhp <- 400
newwt <- 3.6

predictedMPG <- allvarscoeff + (newdisp * dispcoeff) +
    (newhp * hpcoeff) + (newwt * wtcoeff)

cat('Predicted MPG ...')
print(predictedMPG)