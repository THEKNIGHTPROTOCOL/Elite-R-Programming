my_array <- array(1:24, dim = c(2, 3, 4))
dim(my_array)        # Output: 2 3 4
dimnames(my_array) <- list(c("R1", "R2"), c("C1", "C2", "C3"), c("L1", "L2", "L3", "L4"))
dimnames(my_array)  # Output: a list of names for each dimension
attributes(my_array) # Output: a list containing dim and dimnames