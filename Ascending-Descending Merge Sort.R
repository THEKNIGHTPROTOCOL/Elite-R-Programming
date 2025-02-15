ascending_descending_merge_sort <- function(arr) {
  n <- length(arr)
  mid <- ceiling(n / 2)  # Find middle index
  
  # Sort the first half in ascending order
  first_half <- sort(arr[1:mid])
  
  # Sort the second half in descending order
  second_half <- sort(arr[(mid+1):n], decreasing = TRUE)
  
  # Merge both halves
  sorted_arr <- c(first_half, second_half)
  return(sorted_arr)
}

# Example usage:
arr <- c(15, 3, 9, 20, 5, 1, 17, 10)
sorted_arr <- ascending_descending_merge_sort(arr)
print(sorted_arr)
