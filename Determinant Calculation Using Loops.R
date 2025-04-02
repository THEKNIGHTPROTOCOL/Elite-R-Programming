# Function to calculate determinant using recursion
determinant_matrix <- function(mat) {
  n <- nrow(mat)
  
  # Base case: If matrix is 1x1, return the only element
  if (n == 1) {
    return(mat[1, 1])
  }
  
  # Base case: If matrix is 2x2, use direct formula
  if (n == 2) {
    return(mat[1, 1] * mat[2, 2] - mat[1, 2] * mat[2, 1])
  }
  
  det_val <- 0  # Initialize determinant
  
  # Loop through first row elements for Laplace expansion
  for (j in 1:n) {
    # Get minor matrix by removing first row and j-th column
    minor_matrix <- mat[-1, -j]
    
    # Calculate determinant recursively and apply sign (-1)^(1+j)
    det_val <- det_val + ((-1)^(1 + j)) * mat[1, j] * determinant_matrix(minor_matrix)
  }
  
  return(det_val)
}

# Example usage
mat <- matrix(c(2, 3, 1, 
                4, 5, 6, 
                7, 8, 9), 
              nrow = 3, byrow = TRUE)

# Calculate determinant
det_val <- determinant_matrix(mat)

# Print determinant
print(det_val)
