# Function to generate a lower triangular matrix
lower_triangular_matrix <- function(n) {
  # Initialize an n x n matrix with zeros
  mat <- matrix(0, n, n)
  
  # Loop through rows
  for (i in 1:n) {
    # Loop through columns up to the diagonal
    for (j in 1:i) {
      mat[i, j] <- sample(1:9, 1)  # Assign random values for demonstration
    }
  }
  
  return(mat)
}

# Example usage
n <- 4  # Define matrix size
lower_triangular_matrix(n)
