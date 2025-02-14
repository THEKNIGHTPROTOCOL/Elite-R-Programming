# Printing a simple string
cat("Hello, world!\n")  # \n creates a newline

# Printing variables
name <- "Alice"
age <- 30
cat("My name is", name, "and I am", age, "years old.\n")

# Formatted output
x <- 10
y <- 20
cat("The value of x is:", x, "\n")
cat("The sum of x and y is:", x + y, "\n")

# Using sep
cat("This", "is", "a", "sentence.", sep = "-") # Output: This-is-a-sentence.

# Printing to a file
output_file <- "my_output.txt"
cat("This will be written to a file.\n", file = output_file)

# Appending to a file
cat("More text.\n", file = output_file, append = TRUE)

# Using sprintf for more complex formatting
pi_approx <- 3.14159
cat(sprintf("Pi is approximately %.2f\n", pi_approx)) # Output: Pi is approximately 3.14

# Combining cat with other functions
vec <- 1:5
cat("The mean of the vector is:", mean(vec), "\n")