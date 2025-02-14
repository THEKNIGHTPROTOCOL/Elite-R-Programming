mixed_array <- array(c(1, "a", TRUE), dim = c(1, 3)) # Everything becomes character
print(mixed_array)
numeric_array <- as.numeric(mixed_array) # This will produce a warning because "a" can't be coerced to numeric
print(numeric_array) # NA will be introduced as a result of coercion