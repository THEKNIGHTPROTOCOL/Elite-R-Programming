# Creating NA and NaN values
x <- c(1, 2, NA, 4)
y <- 0 / 0  # NaN

# Checking NA and NaN
is.na(x)   # TRUE for NA values
is.nan(y)  # TRUE for NaN value

# Filtering out NA
na.omit(x) # Removes NA values
