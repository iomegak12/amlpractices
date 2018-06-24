rainfall <- c(120,170,125,140,178,188,100,200,250,275,200,175)

rainfall.timeseries <- ts(rainfall, start=c(2012,1), frequency = 12)

plot(rainfall.timeseries)