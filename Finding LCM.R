# Function to find GCD using the Euclidean algorithm
gcd <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b  # Remainder
    a <- temp
  }
  return(a)
} 

# Function to find LCM using the formula LCM(x, y) = (x * y) / GCD(x, y)
lcm <- function(x, y) {
  return(abs(x * y) / gcd(x, y))  # Absolute value to handle negative numbers
}

# Example usage:
lcm(12, 18)  # Output: 36
lcm(7, 5)    # Output: 35
lcm(15, 20)  # Output: 60
