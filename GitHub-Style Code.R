# Function to calculate the sum of squares of each layer in an array
calculate_layer_sums_of_squares <- function(arr) {
  if (!is.array(arr)) {
    stop("Input must be an array.")
  }
  apply(arr, 3, function(x) sum(x^2)) # Apply sum of squares to each layer
}

# Example usage
my_array <- array(1:27, dim = c(3, 3, 3))
sums_of_squares <- calculate_layer_sums_of_squares(my_array)
print(sums_of_squares)

# Error handling example
# my_vector <- 1:10
# calculate_layer_sums_of_squares(my_vector) # This will produce an error