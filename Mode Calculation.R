# Define a function to compute the mode of a sorted vector
mode_function <- function(vec) {
  # Step 1: Sort the vector
  sorted_vec <- sort(vec)
  
  # Step 2: Initialize variables for mode calculation
  max_count <- 0
  mode_value <- sorted_vec[1]
  current_count <- 1
  
  # Step 3: Iterate over the sorted vector
  for (i in 2:length(sorted_vec)) {
    if (sorted_vec[i] == sorted_vec[i - 1]) {
      current_count <- current_count + 1  # Increment count if same as previous
    } else {
      current_count <- 1  # Reset count for a new value
    }
    
    # Step 4: Update mode if a higher frequency is found
    if (current_count > max_count) {
      max_count <- current_count
      mode_value <- sorted_vec[i]
    }
  }
  
  return(mode_value)  # Return the mode
}

# Example Usage
v1 <- c(1, 3, 3, 5, 5, 7, 7, 7, 9, 9, 11)
mode_value <- mode_function(v1)
cat("Mode:", mode_value, "\n")
