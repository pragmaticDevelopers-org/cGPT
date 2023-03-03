# create matrix A and B
A <- matrix(c(-3, 2, 6, 4, 0, -1, 5, 2, 3), nrow = 3, byrow = TRUE)
B <- matrix(c(4, -6, 3), nrow = 3, byrow = TRUE)

# solve AX = B to find X
X <- solve(A, B)
cat("The solution of AX = B is:\n")
print(X)

# create diagonal matrix D
D <- diag(c(-3, 0, 9, 2.3))
cat("The diagonal matrix D is:\n")
print(D)

# calculate D3 + D2 - 2D + 4I
I <- diag(4)
result <- D^3 + D^2 - 2 * D + 4 * I
cat("The result of D3 + D2 - 2D + 4I is:\n")
print(result)