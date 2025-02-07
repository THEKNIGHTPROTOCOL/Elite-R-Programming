generate_primes <- function(limit) {
  primes <- c()
  for (num in 2:limit) {
    if (is_prime(num)) {
      primes <- c(primes, num)
    }
  }
  return(primes)
}

# Example usage:
generate_primes(50)  # Returns prime numbers up to 50
