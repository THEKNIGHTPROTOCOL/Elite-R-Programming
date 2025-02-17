repeat {
    num <- runif(1)  # Generate a random number between 0 and 1
    print(num)
    if (num > 0.8) {
        break  # Exit when num > 0.8
    }
}
