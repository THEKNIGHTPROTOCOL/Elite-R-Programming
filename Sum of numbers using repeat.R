sum <- 0
num <- 1
repeat {
    sum <- sum + num
    num <- num + 1
    if (num > 5) {
        break  # Stop when num exceeds 5
    }
}
print(sum)  # Output: 15 (1+2+3+4+5)
