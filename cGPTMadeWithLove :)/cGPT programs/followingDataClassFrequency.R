# Define the data
data <- data.frame(Class = c("0-25", "25-50", "50-75", "75-100", "100-125"), Frequency = c(5, 8, 13, 11, 3))

# a) Mean
mean <- sum(data$Class * data$Frequency) / sum(data$Frequency)
cat("Mean:", round(mean, 2), "\n")

# b) Variance
variance <- sum(data$Frequency * (data$Class - mean)^2) / (sum(data$Frequency) - 1)
cat("Variance:", round(variance, 2), "\n")

# c) S.D
sd <- sqrt(variance)
cat("Standard Deviation:", round(sd, 2), "\n")

# d) Histogram
hist(data$Class, main="Histogram of Data", xlab="Class", ylab="Frequency", col="blue", border="black", breaks=5)
