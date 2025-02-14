# More examples
my_array <- array(1:24, dim = c(2, 3, 4))
apply(my_array, 1, sum)        # Sum of each row
apply(my_array, 2, mean)       # Mean of each column
apply(my_array, 3, function(x) sum(x^2)) # Sum of squares of each "layer"
apply(my_array, c(1, 3), mean) # Mean across rows and layers for each column

# Example with additional arguments
my_function <- function(x, power) { sum(x^power) }
apply(my_array, 3, my_function, power = 2) # Sum of squares of each layer