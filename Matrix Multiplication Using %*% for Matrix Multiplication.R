# Creating two matrices A and B
A <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)  # 2x3 matrix
B <- matrix(c(7, 8, 9, 10, 11, 12), nrow = 3, ncol = 2)  # 3x2 matrix

# Printing the matrices
print("Matrix A:")
print(A)

print("Matrix B:")
print(B)

# Multiplication of A and B
C <- A %*% B

# Printing the result
print("Matrix Multiplication (A × B):")
print(C)
