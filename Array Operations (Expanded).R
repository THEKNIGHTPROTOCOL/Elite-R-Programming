# Element-wise operations:
my_array * 2        # Multiply each element by 2
my_array + my_array  # Add two arrays (dimensions must match)
my_array ^ 2        # Square each element
sin(my_array)       # Apply a function to each element

# `apply()` function (Critical!)
# Margin: 1 = rows, 2 = columns, 3 = layers, c(1, 2) = rows and columns, etc.
row_sums <- apply(my_array, 1, sum)          # Sum of each row
col_means <- apply(my_array, 2, mean)         # Mean of each column
layer_max <- apply(my_array, 3, max)          # Max of each layer
row_col_sums <- apply(my_array, c(1,2), sum)   # Sum of each row and column combination

# Example with a custom function:
my_func <- function(x) {
  return(sum(x^2) / length(x)) # Mean of squares
}
result <- apply(my_array, 3, my_func) # Apply to each layer

# Other useful functions:
dim(my_array)      # Dimensions of the array
length(my_array)   # Total number of elements
nrow(my_array)     # Number of rows (if treated as a matrix)
ncol(my_array)     # Number of columns (if treated as a matrix)
dimnames(my_array) # Dimension names