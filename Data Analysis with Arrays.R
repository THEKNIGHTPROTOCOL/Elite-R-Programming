# Sample data (replace with your actual data)
data <- array(rnorm(240), dim = c(10, 4, 6), dimnames = list(paste0("Subject", 1:10), paste0("Trial", 1:4), paste0("Condition", 1:6)))

# Calculate the mean response for each subject across all trials and conditions
subject_means <- apply(data, 1, mean)

# Calculate the mean response for each condition across all subjects and trials
condition_means <- apply(data, 3, mean)

# Calculate the mean response for each subject and condition averaged across trials
subject_condition_means <- apply(data, c(1, 3), mean)

# Find the subject with the highest mean response across all trials and conditions
best_subject <- which.max(subject_means)

print(subject_means)
print(condition_means)
print(subject_condition_means)
print(best_subject)