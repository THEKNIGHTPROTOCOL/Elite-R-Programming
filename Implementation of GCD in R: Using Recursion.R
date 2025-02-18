gcd_recursive <- function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(gcd_recursive(b, a %% b))
  }
}

# Example Usage
gcd_recursive(48, 18)  # Output: 6
