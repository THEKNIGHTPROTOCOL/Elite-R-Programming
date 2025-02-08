# Function to compute the transpose manually
manual_transpose <- function(mat) {
  rows <- nrow(mat)
  cols <- ncol(mat)
  
  # Create an empty matrix of transposed dimensions
  transposed_mat <- matrix(0, nrow = cols, ncol = rows)
  
  # Loop to swap elements
  for (i in 1:rows) {
    for (j in 1:cols) {
      transposed_mat[j, i] <- mat[i, j]
    }
  }
  
  return(transposed_mat)
}

# Example usage
A_manual <- manual_transpose(A)
print("Manually Transposed Matrix:")
print(A_manual)
