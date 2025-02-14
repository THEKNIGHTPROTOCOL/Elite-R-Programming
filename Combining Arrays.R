# Creating two matrices
mat1 <- matrix(1:6, nrow = 2)
mat2 <- matrix(7:12, nrow = 2)

# Combining by columns
combined_col <- cbind(mat1, mat2)
print(combined_col)

# Combining by rows
combined_row <- rbind(mat1, mat2)
print(combined_row)
