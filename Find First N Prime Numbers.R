first_n_primes <- function(n) {
  primes <- c()
  num <- 2
  while (length(primes) < n) {
    if (is_prime(num)) {
      primes <- c(primes, num)
    }
    num <- num + 1
  }
  return(primes)
}

# Example usage:
first_n_primes(10)  # Returns the first 10 prime numbers
