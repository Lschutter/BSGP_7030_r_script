data= read.csv('regrex1.csv')

plot(data$x,data$y)

lmData= lm(y~x, data = data)

lmData

summary(lmData)

pred <- predict(lmData, data)

plot(data$x,data$y)
lines(data$x, pred)
title('Linear Regression Model R')


