x <- c(1, NA, 2, NaN, 3)

is.na(x)    # TRUE for both NA and NaN
is.nan(x)   # TRUE only for NaN

# Output:
# is.na(x)  => FALSE TRUE FALSE TRUE FALSE
# is.nan(x) => FALSE FALSE FALSE TRUE FALSE
