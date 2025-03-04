# Define the vector
v1 <- c(1, 3, 3, 5, 5, 7, 7, 7, 9, 9, 11)

# Calculate Mean
mean_value <- mean(v1)

# Calculate Median
median_value <- median(v1)

# Calculate Variance
variance_value <- var(v1)

# Calculate Standard Deviation
std_dev_value <- sd(v1)

# Function to calculate Mode
mode_function <- function(x) {
  uniq_vals <- unique(x)
  freq <- tabulate(match(x, uniq_vals))
  mode_vals <- uniq_vals[freq == max(freq)]
  return(mode_vals)
}

# Compute Mode
mode_value <- mode_function(v1)

# Display Results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Variance:", variance_value, "\n")
cat("Standard Deviation:", std_dev_value, "\n")
cat("Mode:", mode_value, "\n")