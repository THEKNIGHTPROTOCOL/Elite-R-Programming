# Example: List of matrices
list_of_matrices <- list(matrix(1:4, 2), matrix(5:8, 2))
lapply(list_of_matrices, sum)  # Apply sum to each matrix in the list

# Example: Applying a function to each element (less common for arrays, but possible)
sapply(my_array, sqrt) # Square root of each element