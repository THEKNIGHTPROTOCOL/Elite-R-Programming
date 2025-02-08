# Function for manual matrix multiplication
manual_matrix_multiply <- function(A, B) {
  if (ncol(A) != nrow(B)) {
    stop("Number of columns of A must match the number of rows of B!")
  }
  
  result <- matrix(0, nrow = nrow(A), ncol = ncol(B))  # Empty result matrix
  
  for (i in 1:nrow(A)) {
    for (j in 1:ncol(B)) {
      result[i, j] <- sum(A[i, ] * B[, j])  # Dot product
    }
  }
  
  return(result)
}

# Example usage
C_manual <- manual_matrix_multiply(A, B)

print("Manually Computed Matrix Multiplication:")
print(C_manual)
