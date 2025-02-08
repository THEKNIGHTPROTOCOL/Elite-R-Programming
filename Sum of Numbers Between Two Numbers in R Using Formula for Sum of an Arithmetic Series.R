sum_formula <- function(x, y) {
  n <- (y - x + 1)  # Number of terms
  return((n * (x + y)) / 2)
}

# Example usage
result_formula <- sum_formula(x, y)
print(paste("Sum using formula:", result_formula))
