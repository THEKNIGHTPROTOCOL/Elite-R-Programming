is_perfect <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  
  sum_divisors <- sum(sapply(1:(n-1), function(x) if (n %% x == 0) x else 0))
  
  return(sum_divisors == n)
}

# Example: Checking for perfect numbers
num <- as.integer(readline("Enter a number: "))
if (is_perfect(num)) {
  print(paste(num, "is a Perfect Number! 🎉"))
} else {
  print(paste(num, "is NOT a Perfect Number. ❌"))
}
