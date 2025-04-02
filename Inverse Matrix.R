# Function to compute the minor of an element at (row, col)
minor_matrix <- function(mat, row, col) {
  return(mat[-row, -col])  # Remove the specified row and column
}

# Function to compute the determinant of a matrix
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
  
  # Laplace Expansion
  for (j in 1:n) {
    sub_matrix <- mat[-1, -j]  # Remove first row and j-th column
    det_val <- det_val + ((-1)^(1 + j)) * mat[1, j] * determinant_matrix(sub_matrix)
  }
  
  return(det_val)
}

# Function to compute cofactors of a matrix
cofactors_matrix <- function(mat) {
  n <- nrow(mat)
  cofactors <- matrix(0, n, n)  # Initialize cofactors matrix
  
  # Compute each cofactor
  for (i in 1:n) {
    for (j in 1:n) {
      minor <- determinant_matrix(minor_matrix(mat, i, j))
      cofactors[i, j] <- ((-1)^(i + j)) * minor
    }
  }
  
  return(cofactors)
}

# Function to compute adjugate (adjoint) matrix
adjugate_matrix <- function(mat) {
  cofactors <- cofactors_matrix(mat)  # Get cofactor matrix
  adjugate <- t(cofactors)  # Transpose the cofactor matrix
  return(adjugate)
}

# Function to compute inverse of a matrix
inverse_matrix <- function(mat) {
  detA <- determinant_matrix(mat)  # Compute determinant
  
  # Check if the determinant is 0 (Non-invertible matrix)
  if (detA == 0) {
    stop("Matrix is singular and does not have an inverse.")
  }
  
  adjA <- adjugate_matrix(mat)  # Compute adjugate matrix
  invA <- adjA / detA  # Multiply adjugate by 1/det(A)
  
  return(invA)
}

# Example usage
mat <- matrix(c(2, 3, 1, 
                4, 5, 6, 
                7, 8, 9), 
              nrow = 3, byrow = TRUE)

# Compute inverse matrix
if (determinant_matrix(mat) != 0) {
  inv_mat <- inverse_matrix(mat)
  print("Inverse Matrix:")
  print(inv_mat)
} else {
  print("Matrix is singular and cannot be inverted.")
}
