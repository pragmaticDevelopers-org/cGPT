# Part a)
# Define parameters
n <- 5
p <- 1/4
x <- 0:n

# Find probabilities
px <- dbinom(x, n, p)
px4 <- dbinom(4, n, p)
pxlte3 <- pbinom(3, n, p)
pxgte2 <- pbinom(1, n, p, lower.tail = FALSE)

# Print results
cat("p(x):", px, "\n")
cat("p(x=4):", px4, "\n")
cat("p(x<=3):", pxlte3, "\n")
cat("p(x>=2):", pxgte2, "\n")

# Part b)
# Define parameters
n <- 12
p <- 1/5
x <- 0:n

# Find probabilities
px4 <- dbinom(4, n, p)
px4lte <- pbinom(4, n, p)
pxgt6 <- pbinom(6, n, p, lower.tail = FALSE)

# Print results
cat("p(exactly 4 correct answers):", px4, "\n")
cat("p(4 or less correct answers):", px4lte, "\n")
cat("p(more than 6 correct answers):", 1 - pxgt6, "\n")
