# Define a square matrix
mat <- matrix(c(2, 3, 1, 
                4, 5, 6, 
                7, 8, 9), 
              nrow = 3, byrow = TRUE)

# Calculate determinant
det_value <- det(mat)

# Print determinant
print(det_value)
