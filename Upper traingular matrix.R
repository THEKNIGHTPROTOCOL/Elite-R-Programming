# Function to generate an upper triangular matrix
upper_triangular_matrix <- function(n) {
  # Initialize an n x n matrix with zeros
  mat <- matrix(0, n, n)
  
  # Loop through rows
  for (i in 1:n) {
    # Loop through columns from the diagonal to the end
    for (j in i:n) {
      mat[i, j] <- sample(1:9, 1)  # Assign random values for demonstration
    }
  }
  
  return(mat)
}

# Example usage
n <- 4  # Define matrix size
upper_triangular_matrix(n)
