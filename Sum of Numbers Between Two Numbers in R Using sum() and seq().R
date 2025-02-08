# Function to compute sum between x and y
sum_between <- function(x, y) {
  return(sum(seq(x, y)))
}

# Example usage
x <- 3
y <- 7
result <- sum_between(x, y)

# Printing the result
print(paste("Sum of numbers between", x, "and", y, "is:", result))
