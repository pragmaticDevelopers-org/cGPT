# Create matrix A and B
A <- matrix(c(-3, 2, 6, 4, 0, -1, 5, 2, 3), nrow = 3, ncol = 3, byrow = TRUE)
B <- matrix(c(1, 5, 4, -3, 2, 6, 0, -4, 3), nrow = 3, ncol = 3, byrow = TRUE)

# a) A+B
A + B

# b) AB
A %*% B

# c) BA
B %*% A

# d) AT
t(A)

# e) (A+B)T
t(A + B)

# f) A-1
solve(A)
