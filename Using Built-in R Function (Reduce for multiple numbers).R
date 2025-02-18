lcm_multiple <- function(numbers) {
  Reduce(function(a, b) abs(a * b) / gcd(a, b), numbers)
}

# Example usage
lcm_multiple(c(12, 18, 24))  # Output: 72
