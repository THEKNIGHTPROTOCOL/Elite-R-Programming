pascal_triangle <- function(n) {
  triangle <- list()
  for (i in 1:n) {
    if (i == 1) {
      triangle[[i]] <- c(1)
    } else {
      prev_row <- triangle[[i-1]]
      new_row <- c(1, prev_row[1:(i-1)] + prev_row[2:i], 1)
      triangle[[i]] <- new_row
    }
  }
  return(triangle)
}

# Example: Generate first 5 rows
rows <- 5
triangle <- pascal_triangle(rows)

# Print Pascal's Triangle
for (i in 1:rows) {
  cat(rep(" ", rows - i), triangle[[i]], "\n")
}
