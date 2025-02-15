binary_search <- function(arr, target) {
  left <- 1
  right <- length(arr)
  
  while (left <= right) {
    mid <- floor((left + right) / 2)
    
    if (arr[mid] == target) {
      return(mid)  # Return the index of the target
    } else if (arr[mid] < target) {
      left <- mid + 1  # Search the right half
    } else {
      right <- mid - 1 # Search the left half
    }
  }
  
  return(-1)  # Return -1 if not found
}

# Example usage:
arr_sorted <- sort(c(1, 3, 5, 9, 10, 15, 17, 20))  # Ensure array is sorted
target <- 9
index <- binary_search(arr_sorted, target)
print(index)  # Output will be the position of the element
