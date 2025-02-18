gcd <- function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(gcd(b, a %% b))
  }
}

lcm <- function(a, b) {
  return(abs(a * b) / gcd(a, b))
}

# Example usage
lcm(12, 18)  # Output: 36
