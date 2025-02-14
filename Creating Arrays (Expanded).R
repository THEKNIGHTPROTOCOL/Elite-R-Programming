# Using the array() function
my_array <- array(data = 1:24, dim = c(2, 3, 4)) # 2 rows, 3 columns, 4 layers

# Providing dimension names (highly recommended!)
dimnames(my_array) <- list(rows = c("Row1", "Row2"), cols = c("Col1", "Col2", "Col3"), layers = c("L1", "L2", "L3", "L4"))
print(my_array)

# Creating an array with specific values:
another_array <- array(0, dim = c(3, 2, 2))  # Creates a 3x2x2 array filled with 0s

# Data recycling:
short_data <- 1:4
long_array <- array(short_data, dim = c(3, 3, 2)) # short_data will be recycled
print(long_array)

# Creating an array from nested lists (less common but possible):
my_list <- list(matrix(1:4, 2), matrix(5:8, 2), matrix(9:12, 2))
array_from_list <- array(unlist(my_list), dim = c(2, 2, 3))
print(array_from_list)