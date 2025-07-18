# Finding sum of elements along rows (MARGIN=1)
row_sums <- apply(arr, 1, sum)
print(row_sums)

# Finding sum of elements along columns (MARGIN=2)
col_sums <- apply(arr, 2, sum)
print(col_sums)
      