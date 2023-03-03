# Define the data
x <- c(150, 155, 160, 165, 170, 175)
f <- c(6, 11, 14, 9, 3, 2)

# a) Range
range <- max(x) - min(x)
cat("Range:", range, "\n")

# b) Mean
mean <- sum(x * f) / sum(f)
cat("Mean:", round(mean, 2), "\n")

# c) Median
n <- sum(f)
if (n %% 2 == 0) {
  median <- (x[n/2] + x[(n/2)+1]) / 2
} else {
  median <- x[(n+1)/2]
}
cat("Median:", median, "\n")

# d) Mode
mode <- x[which.max(f)]
cat("Mode:", mode, "\n")

# e) Q1
q1 <- quantile(x, 0.25)
cat("Q1:", q1, "\n")

# f) P67
p67 <- quantile(x, 0.67)
cat("P67:", p67, "\n")

# g) D8
d8 <- x[which.min(abs(x - (mean + (8 * sd(x)))))]
cat("D8:", d8, "\n")

# h) Q.D
qd <- IQR(x)
cat("Q.D:", qd, "\n")

# i) Var
variance <- sum(f * (x - mean)^2) / (sum(f) - 1)
cat("Variance:", round(variance, 2), "\n")

# j) S.D
sd <- sqrt(variance)
cat("Standard Deviation:", round(sd, 2), "\n")

# k) Summary
summary <- summary(x)
cat("Summary:\n", summary, "\n")

# l) Histogram
hist(x, main="Histogram of Data", xlab="Data", ylab="Frequency", col="blue", border="black", breaks=6)
