gcd_iterative <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}

# Example Usage
gcd_iterative(48, 18)  # Output: 6
