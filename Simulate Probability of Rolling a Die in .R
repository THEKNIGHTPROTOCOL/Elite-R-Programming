# Set seed for reproducibility
set.seed(123)

# Number of times the dice is rolled
n <- 10000

# Simulate rolling the die 'n' times
rolls <- sample(1:6, size = n, replace = TRUE)

# Create a table of outcomes
outcome_table <- table(rolls)

# Calculate probabilities
probabilities <- outcome_table / n

# Print frequency table
print(outcome_table)

# Print simulated probabilities
print(probabilities)

# Optional: Bar plot for visualization
barplot(probabilities,
        main = "Simulated Probability of Rolling a Die",
        xlab = "Die Face",
        ylab = "Probability",
        col = rainbow(6),
        ylim = c(0, 0.2))
