data <- read.csv('regrex1.csv')


# Generate scatter plot and save as r_orig.png
png(file = "r_orig.png")
plot(data$x, data$y)
title('Scatter Plot R')
dev.off()

# Perform linear regression
lmData <- lm(y ~ x, data = data)

# Predict values
pred <- predict(lmData, data)

# Generate combined plot and save as r_lm.png
png(file = "r_lm.png")
plot(data$x, data$y)
lines(data$x, pred, col = "red")
title('Combined Plot R')
dev.off()

# Print summary of linear model
print(summary(lmData))


