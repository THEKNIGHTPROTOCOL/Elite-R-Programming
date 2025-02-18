pascal_triangle_choose <- function(n) {
  for (i in 0:(n-1)) {
    row <- sapply(0:i, function(k) choose(i, k))
    cat(rep(" ", n - i), row, "\n")
  }
}

# Example: Generate first 5 rows
pascal_triangle_choose(5)
