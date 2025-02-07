is_prime <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}

# Example usage:
is_prime(7)  # Returns TRUE
is_prime(10) # Returns FALSE
