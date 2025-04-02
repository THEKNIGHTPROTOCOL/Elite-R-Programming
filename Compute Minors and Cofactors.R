# Function to compute the minor of an element at (row, col)
minor_matrix <- function(mat, row, col) {
  return(mat[-row, -col])  # Remove the specified row and column
}

# Function to compute the determinant of a matrix (used for minors)
determinant_matrix <- function(mat) {
  n <- nrow(mat)
  
  # Base case: If 1x1 matrix, return the only element
  if (n == 1) {
    return(mat[1, 1])
  }
  
  # Base case: If 2x2 matrix, return determinant directly
  if (n == 2) {
    return(mat[1,1] * mat[2,2] - mat[1,2] * mat[2,1])
  }
  
  det_val <- 0  # Initialize determinant
  
  # Loop through first row elements for Laplace expansion
  for (j in 1:n) {
    sub_matrix <- mat[-1, -j]  # Remove first row and j-th column
    det_val <- det_val + ((-1)^(1 + j)) * mat[1, j] * determinant_matrix(sub_matrix)
  }
  
  return(det_val)
}

# Function to compute minors of a matrix
minors_matrix <- function(mat) {
  n <- nrow(mat)
  minors <- matrix(0, n, n)  # Initialize minors matrix
  
  # Compute each minor
  for (i in 1:n) {
    for (j in 1:n) {
      minors[i, j] <- determinant_matrix(minor_matrix(mat, i, j))
    }
  }
  
  return(minors)
}

# Function to compute cofactors of a matrix
cofactors_matrix <- function(mat) {
  n <- nrow(mat)
  cofactors <- minors_matrix(mat)  # Compute minors first
  
  # Apply sign changes for cofactors
  for (i in 1:n) {
    for (j in 1:n) {
      cofactors[i, j] <- ((-1)^(i + j)) * cofactors[i, j]
    }
  }
  
  return(cofactors)
}

# Example usage
mat <- matrix(c(2, 3, 1, 
                4, 5, 6, 
                7, 8, 9), 
              nrow = 3, byrow = TRUE)

# Compute minors and cofactors
minors <- minors_matrix(mat)
cofactors <- cofactors_matrix(mat)

# Print results
print("Minors of the matrix:")
print(minors)

print("Cofactors of the matrix:")
print(cofactors)
