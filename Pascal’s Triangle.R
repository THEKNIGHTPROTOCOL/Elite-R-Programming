pascal_triangle <- function(n) {
  for (i in 0:(n - 1)) {
    row <- numeric(i + 1)
    row[1] <- 1  # First element is always 1
    
    if (i > 0) {
      for (j in 2:(i + 1)) {
        row[j] <- row[j - 1] * (i - j + 2) / (j - 1)
      }
    }
    
    # Print the row with proper spacing
    cat(rep(" ", (n - i)), row, "\n")
  }
}

# Taking user input
num_rows <- as.integer(readline("Enter number of rows for Pascal's Triangle: "))
pascal_triangle(num_rows)
