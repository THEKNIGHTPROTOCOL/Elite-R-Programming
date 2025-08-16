# Accessing with indices:
my_array[1, 2, 3]  # Element at Row1, Col2, L3 
my_array["Row1", "Col2", "L3"] # Using dimension names

# Slicing: 
my_array[1, , ]      # All elements in Row1 across all columns and layers
my_array[, "Col2", 1:2]  # All elements in Col2 of layers L1 and L2
my_array[1:2, 2:3, c("L1", "L3")] # A sub-array

# Modifying elements:
my_array[1, 2, 3] <- 100  # Change a single element
my_array[, , "L1"] <- 0    # Set all elements in layer L1 to 0

# Conditional indexing:
my_array[my_array > 10] <- NA # Replace elements greater than 10 with NA